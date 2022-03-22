//
//  DetailView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 08..
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var trainListViewModel = TrainListViewModel()
    
    var details: [Detail]
    
    var body: some View {
        ZStack{
            VStack{
                Text((details[0].trainInfo?.code ?? " ") + " " + (details[0].trainInfo?.info ?? " "))
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 18, weight: .bold))
                    .padding(.top, 20)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                
                Text(trainListViewModel.timetables?.timetable[0].totaltime ?? "")
                Text(trainListViewModel.timetables?.timetable[0].type ?? " ")
                
                ScrollView(showsIndicators: false){
                    ForEach(details){ detail in
                        if(!detail.dep.isEmpty){
                            StationView(detail: detail)
                                .padding(10)
                        }
                        
                    }
                }
                    
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.9,
                   height: UIScreen.main.bounds.size.height * 0.8)
            .background(Color("MAV-White") )
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
            .padding(.bottom, 150)
            .offset(y: 80)
            
        }
        .frame(width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height)
        .background(Color("MAV-LightGray"))
        .navigationBarTitle("Részletek")
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

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
