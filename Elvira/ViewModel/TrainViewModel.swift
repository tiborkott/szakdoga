//
//  TrainViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 20..
//

import SwiftUI
import Foundation

class TrainViewModel: ObservableObject{
    
    
    func trainTypeColor(timetable: Timetable) -> Color {
        if(timetable.type == "fast"){
            return Color.red
        }else if(timetable.details[0].trainInfo!.info.contains("sebes")){
            return Color.green
        }else if(timetable.details[0].trainInfo!.info.contains("IC")){
            return Color.blue
        }else{
            return Color("MAV-Black")
        }
    }
}

