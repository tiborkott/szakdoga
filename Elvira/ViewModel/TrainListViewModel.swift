//
//  TrainListViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 07..
//

import SwiftUI
import Alamofire

class TrainListViewModel: ObservableObject{
    @Published var timetables: Timetables?
    
    
    func fetchElvira(from: String, to: String){
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
            print("SUCCESSFUL REQUEST")
            
            do{
                self.timetables = try JSONDecoder().decode(Timetables.self, from: response.data!)
                //print(self.timetables!)
            }catch{
                print(error)
            }
        }
    }
    
}
