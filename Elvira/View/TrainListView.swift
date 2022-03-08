//
//  TrainListView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import SwiftUI


struct TrainListView: View {
    @ObservedObject var trainListViewModel = TrainListViewModel()
    
    var from: String
    var to: String
    

    var body: some View {
        ScrollView{
            ForEach(trainListViewModel.timetables?.timetable ?? []){ timetable in
                TrainView(from: timetable.details[0].from,
                          fromtime: timetable.starttime,
                          to: timetable.details[1].from,
                          totime: timetable.destinationtime
                )
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .padding(.bottom, 10)
                
            }
        }.onAppear(){
            trainListViewModel.fetchElvira(from: from, to: to)
        }.navigationBarTitle("")
         .navigationBarTitleDisplayMode(.inline)
    }
}

//struct TrainList_Previews: PreviewProvider {
//    static var previews: some View {
//        TrainListView()
//    }
//}
