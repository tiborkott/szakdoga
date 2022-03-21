//
//  Favorite.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 21..
//

import Foundation

struct Favorite: Codable, Identifiable {
    let id = UUID()
    let from: String
    let dep: String
    let depReal: String
}
