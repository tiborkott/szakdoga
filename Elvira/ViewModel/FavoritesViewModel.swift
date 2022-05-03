//
//  FavoritesViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 04. 06..
//

import Foundation
import UserNotifications
import WidgetKit

class FavoritesViewModel: ObservableObject{
    @Published var favorites: [Favorite]
    
    init(){
        favorites = []
    }
    
    func enabledToggled(){
        WidgetCenter.shared.reloadAllTimelines()
    }
    
    func addFavorite(favorite: Favorite){
        self.favorites.append(favorite)
        self.favorites.sort(by: {$0.department < $1.department})
    }
    
    func deleteFavorite(favorite: Favorite){
        let index = self.favorites.firstIndex(where: { $0.id == favorite.id })
        if index != nil {
            self.favorites.remove(at: index!)
        }
        WidgetCenter.shared.reloadAllTimelines()
    }
    
    private static func fileURL() throws -> URL {
        FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: "group.elvira")!
            .appendingPathComponent("favorites.data")
    }
    
    static func load(completion: @escaping (Result<[Favorite], Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let fileURL = try fileURL()
                guard let file = try? FileHandle(forReadingFrom: fileURL) else
                {
                    DispatchQueue.main.async {
                        completion(.success([]))
                    }
                    return
                }
                   
                let favorites = try JSONDecoder().decode([Favorite].self, from: file.availableData)
                DispatchQueue.main.async {
                    completion(.success(favorites))
                    WidgetCenter.shared.reloadAllTimelines()
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
    
    static func save(favorites: [Favorite], completion: @escaping (Result<Int, Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let data = try JSONEncoder().encode(favorites)
                let file = try fileURL()
                try data.write(to: file)
                DispatchQueue.main.async {
                    completion(.success(favorites.count))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
            
        }
    }
    
    func requestAuthorization(){
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    func setNotifications(){
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        
        let content = UNMutableNotificationContent()
        content.title = "Elvira"
        content.subtitle = "Indulnjon el időben az állomásra."
        content.sound = UNNotificationSound.default
        
       
        
        for favorite in self.favorites{
            if favorite.enabled{
                var date = DateComponents()
                let calendar = Calendar.current
                let departmentHour = favorite.department.components(separatedBy: ":")[0]
                let departmentMinute = favorite.department.components(separatedBy: ":")[1]
                date.hour = Int(departmentHour)! - calendar.component(.hour, from: favorite.notification)
                date.minute = Int(departmentMinute)! - calendar.component(.minute, from: favorite.notification)
                if(date.minute! < 0){
                    date.minute = date.minute! + 60
                }
                if(date.hour! < 0){
                    date.hour = date.hour! + 24
                }
                
                let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }
           
        }
    }
}

