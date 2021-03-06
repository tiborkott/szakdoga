//
//  TrainListView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import SwiftUI


struct TrainListView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var trainListViewModel: TrainListViewModel
    var from: String
    var to: String
    

    var body: some View {
            if(trainListViewModel.loaded == true){
                ScrollView(showsIndicators: false){
                    ForEach(trainListViewModel.timetables?.timetable ?? []){ timetable in
                        TrainView(from: timetable.details[0].from,
                                  fromtime: timetable.starttime,
                                  to: timetable.details[timetable.details.count-1].from,
                                  totime: timetable.destinationtime,
                                  timetable: timetable
                        )
                        .padding(10)
                    }
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
            }else{
                VStack{
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: Color("MAV-Blue")))
                        .navigationBarTitle("Vonatok")
                        .frame(width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height*2)
                        .ignoresSafeArea()
                        .background(Color("MAV-LightGray"))
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
        
    }
}
