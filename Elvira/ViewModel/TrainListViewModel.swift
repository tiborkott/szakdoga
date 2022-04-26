//
//  TrainListViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 07..
//

import Alamofire

class TrainListViewModel: ObservableObject{
    @Published var timetables: Timetables?
    @Published var loaded: Bool = false

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
            let request = AF.request(url,method: .get,encoding: JSONEncoding.default)

            request.responseDecodable(of: Timetables.self) { (response) in
                do{
                    self.timetables = try JSONDecoder().decode(Timetables.self, from: response.data!)
                    self.loaded = true
                }catch{
                    print(error)
                }
            }
    }
    
    
    func alreadyFavorite(favoritesViewModel: FavoritesViewModel, favorite: Favorite) -> Bool{
        let index = favoritesViewModel.favorites.firstIndex(where: {
            $0.arrival == favorite.arrival &&
            $0.department == favorite.department &&
            $0.from == favorite.from &&
            $0.to == favorite.to &&
            $0.type == favorite.type
        })
            
        if index == nil {
            return false
        }else{
            return true
        }
    }
        
    func trainType(timetable: Timetable) -> String {
        if(timetable.type == "fast"){
            return "Gyors"
        }else if(timetable.details[0].trainInfo!.info.contains("sebes")){
            return "Sebes"
        }else if(timetable.details[0].trainInfo!.info.contains("IC")){
            return "Intercity"
        }else{
            return "Zónázó"
        }
    }

}
