//
//  NetworkManager.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 04. 15..
//

import Foundation
import Network
import Alamofire


class NetworkManager: ObservableObject {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkManager")
    @Published var notConnected = false
    var connectionDescription: String {
        if notConnected{
            return "Ellenőrizze az internet kapcsolatot a beállításokban!"
        }else{
            return "Jó az internet kapcsolat"
        }
    }
    
    init(){
        monitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                self.notConnected = path.status == .unsatisfied
            }
        }
        
        monitor.start(queue: queue)
    }
    
    func fetchElvira(from: String, to: String) -> ([Timetable], Bool){
        let from_url = from.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        let to_url = to.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        
        let url = "https://apiv2.oroszi.net/elvira?from=\(from_url)&to=\(to_url)&date=\(year).\(month).\(day)&fromtime=\(hour):\(minute)"
        print(url)
        let request = AF.request(url,method: .get,encoding: JSONEncoding.default)
        
        request.responseDecodable(of: Timetables.self) { (response) in
            do{
                let timetables = try JSONDecoder().decode(Timetables.self, from: response.data!)
                //return(timetables, loaded)
                return (timetables ,true)
            }catch{
                print(error)
            }
        }
    }

}
