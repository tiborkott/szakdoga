//
//  SearchViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 19..
//

import Foundation

class SearchViewModel: ObservableObject{
    
    var fromBool = false
    var toBool = false
   
    @Published
    var from: String = "" {
        didSet {
            if stations.contains(self.from){
                fromBool = true
            }else {
                toBool = false
            }
        }
    }
    
    @Published
    var to: String = ""{
        didSet {
            if stations.contains(self.to){
                print("Most mar jo")
                toBool = true
            }else {
                toBool = false
            }
        }
    }
    
    @Published
    var fromSearch: String = ""
    
    @Published
    var toSearch: String = ""
    
    func isSreachable () -> Bool {
        return fromBool && toBool
    }
}


