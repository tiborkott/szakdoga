//
//  Favorite.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 21..
//

import Foundation

struct Favorite: Codable, Identifiable {
    var id = UUID()
    let name: String
    let type: String
    let from: String
    let to: String
    let depReal: String
    let arrival: String
    let notifytime: Int
}
