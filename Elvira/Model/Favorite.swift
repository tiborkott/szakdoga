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
    var from: String
    var to: String
    var department: String
    var arrival: String
    var type: String
    var notification: Date
}
