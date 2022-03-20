//
//  SearchViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 19..
//

import Foundation

class SearchViewModel: ObservableObject{
    @Published var from: String = ""
    @Published var to: String = ""
    @Published var fromSearch: String = ""
    @Published var toSearch: String = ""
    
    
}
