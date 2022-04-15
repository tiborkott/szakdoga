//
//  SearchViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 19..
//

import Foundation

class SearchViewModel: ObservableObject{
    
    var fromBool = true
    var toBool = true
   
    @Published var from: String = "" {
        didSet {
            if stations.contains(self.from){
                fromBool = true
            }else {
                toBool = false
            }
        }
    }
    
    @Published var to: String = ""{
        didSet {
            if stations.contains(self.to){
                toBool = true
            }else {
                toBool = false
            }
        }
    }
    
    func isSreachable () -> Bool {
        return fromBool && toBool
    }
}


