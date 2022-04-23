//
//  SearchViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 19..
//

import Foundation

class SearchViewModel: ObservableObject{
    @Published var history: Set<Search>
    @Published var historyShow: Bool
    var fromBool = false
    var toBool = false
   
    init(){
        history = []
        historyShow = false
    }
    @Published var from: String = "" {
        didSet {
            if stations.contains(self.from){
                fromBool = true
            }else {
                toBool = false
            }
        }
    }
    
    @Published var to: String = ""{
        didSet {
            if stations.contains(self.to){
                toBool = true
            }else {
                toBool = false
            }
        }
    }
    
    private static func fileURL() throws -> URL {
        //try FileManager.default.url(for: .documentDirectory,in: .userDomainMask,appropriateFor: nil,create: false)
        //.appendingPathComponent("favorites.data")
        
        FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: "group.elvira")!
            .appendingPathComponent("history.data")
    }
    
    static func load(completion: @escaping (Result<[Search], Error>)->Void) {
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
                   
                let history = try JSONDecoder().decode([Search].self, from: file.availableData)
                DispatchQueue.main.async {
                    completion(.success(history))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
    
    static func save(history: [Search], completion: @escaping (Result<Int, Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let data = try JSONEncoder().encode(history)
                let file = try fileURL()
                try data.write(to: file)
                DispatchQueue.main.async {
                    completion(.success(history.count))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
            
        }
    }
    
    func isSreachable () -> Bool {
        return fromBool && toBool
    }
    
    func setSearchFields(from: String,to: String){
        self.from = from
        self.to = to
    }
    func addSearchToHistory(from: String, to: String){
        if(history.count <= 12){
            history.insert(Search(from: from, to: to))
        }else{
            history.removeFirst()
            history.insert(Search(from: from, to: to))
        }
        
    }
}


