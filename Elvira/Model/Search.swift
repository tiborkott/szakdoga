//
//  Search.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 04. 22..
//

import Foundation


struct Search: Codable, Hashable {
    let from :  String
    let to : String
    
    init(from: String, to: String){
        self.from = from
        self.to = to
    }
}
