//
//  TrainListView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import SwiftUI


struct TrainListView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var trainListViewModel = TrainListViewModel()
    
    var from: String
    var to: String
    

    var body: some View {
        ScrollView(showsIndicators: false){
            ForEach(trainListViewModel.timetables?.timetable ?? []){ timetable in
                TrainView(from: timetable.details[0].from,
                          fromtime: timetable.starttime,
                          to: timetable.details[timetable.details.count-1].from,
                          totime: timetable.destinationtime,
                          details: timetable.details
                )
                .padding(10)
                
                
            }
        }.onAppear(){
            trainListViewModel.fetchElvira(from: from, to: to)
        }
         .background(Color("MAV-LightGray"))
         .navigationBarTitle("Vonatok")
         .navigationBarTitleDisplayMode(.inline)
         .navigationBarBackButtonHidden(true)
         .navigationBarItems(leading:
                     Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                     }) {
                        Image(systemName: "chevron.backward").foregroundColor(Color("MAV-Blue"))
                 })
        }
}

//struct TrainList_Previews: PreviewProvider {
//    static var previews: some View {
//        TrainListView()
//    }
//}
