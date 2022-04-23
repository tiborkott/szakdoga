//
//  Favorite.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 21..
//

import Foundation

struct Favorite: Codable, Identifiable {
    var id = UUID()
    var enabled: Bool
    let from: String
    let to: String
    let department: String
    let arrival: String
    let type: String
    var notification: Date
    
    init(enabled: Bool = false,
         from: String,
         to: String,
         department: String,
         arrival: String,
         type: String,
         notification: Date = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: Date())!
    ){
        self.enabled = enabled
        self.from = from
        self.to = to
        self.department = department
        self.arrival = arrival
        self.type = type
        self.notification = notification
    }
}
