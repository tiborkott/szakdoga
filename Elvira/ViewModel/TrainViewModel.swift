//
//  TrainViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 20..
//

import Foundation

class TrainViewModel: ObservableObject{
    @Published var from: String = ""
    @Published var fromtime: String = ""
    @Published var to: String = ""
    @Published var totime: String = ""
    @Published var details: [Detail] = []
    
}
