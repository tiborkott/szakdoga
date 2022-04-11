//
//  DetailView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 08..
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var trainListViewModel: TrainListViewModel
    var timetable: Timetable
    
    
    var body: some View {
        ZStack{
            VStack{
                Text((timetable.details[0].trainInfo?.code ?? " ") + " " + (timetable.details[0].trainInfo?.info.components(separatedBy: "(")[0] ?? " "))
                    .frame(alignment: .leading)
                    .font(.system(size: 20, weight: .bold))
                    .padding(.top, 20)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .padding(.bottom, 10)
                
                Rectangle()
                    .strokeBorder(Color("MAV-Black"), style: StrokeStyle(lineWidth: 2, dash: [10]))
                    .frame(width: UIScreen.main.bounds.size.width * 0.80, height: 2)

                
                HStack{
                    Image(systemName: "timer").foregroundColor(Color("MAV-Blue"))
                    Text("Idő:")
                    Text(timetable.totaltime)
                    Spacer()
                }
                .padding(.top, 10)
                .padding(.leading, 20)
                .padding(.bottom, 10)
                
                HStack{
                    Image(systemName: "tram.circle").foregroundColor(Color("MAV-Blue"))
                    Text("Távolság:")
                    Text(timetable.distance)
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.bottom, 10)
                
                HStack{
                    Image(systemName: "wallet.pass").foregroundColor(Color("MAV-Blue"))
                    Text("Osztály:")
                    Text(timetable.className)
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.bottom, 10)
                
                Rectangle()
                    .strokeBorder(Color("MAV-Black"), style: StrokeStyle(lineWidth: 2, dash: [10]))
                    .frame(width: UIScreen.main.bounds.size.width * 0.80, height: 2)

                
                if timetable.details.count > 2 {
                    Text("Átszállás")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.top, 10)
    
                    ScrollView(showsIndicators: false){
                        ForEach(timetable.details){ detail in
                            if(!detail.dep.isEmpty){
                                StationView(detail: detail)
                                    .padding(10)
                            }
                        }
                    }
                }
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.9)
            .frame(minHeight: UIScreen.main.bounds.size.height * 0.5)
            .background(Color("MAV-White") )
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
            .padding(.bottom, 160)
            .offset(y: 80)
            
        }
        .ignoresSafeArea()
        .frame(width: UIScreen.main.bounds.size.width)
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
