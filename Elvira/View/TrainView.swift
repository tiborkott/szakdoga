//
//  TrainView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import SwiftUI

struct TrainView: View {
    var from: String
    var fromtime: String
    var to: String
    var totime: String
    var timetable: Timetable

    var body: some View {
            VStack {
                //Text(details[0].trainInfo?.info.components(separatedBy:" ")[0] ?? " ")

                HStack {
                    VStack{
                        Image(systemName: "train.side.front.car").foregroundColor({
                            if(timetable.details[0].trainInfo!.info.contains("gyors")){
                                return Color.red
                            }else if(timetable.details[0].trainInfo!.info.contains("sebes")){
                                return Color.green
                            }else if(timetable.details[0].trainInfo!.info.contains("IC")){
                                return Color.blue
                            }else{
                                return Color("MAV-Black")
                            }
                        }())
                            .padding(10)
                        Button () {
                            
                        }label: {
                            Image(systemName: "heart").foregroundColor(Color("MAV-Black"))
                                .padding(10)
                        }
                       
            
                        Spacer()
                    }
                    
                        
                    VStack(alignment: .leading) {
                        Text(from)
                            .padding(.bottom, 4)
                        Text(fromtime)
                        Text(timetable.details[0].depReal)
                            .foregroundColor(Color.red)
                    }
                    .padding()
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text(to)
                            .padding(.bottom, 4)
                        Text(totime)
                        Text("  ")
                    }
                    
                    VStack{
                        NavigationLink(destination: DetailView(details: timetable.details)){
                            Image(systemName: "chevron.right").foregroundColor(Color("MAV-Blue"))
                        }
                        .padding(10)
                    }
                    
                    
                }
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.95,
                    height: UIScreen.main.bounds.size.height * 0.13)
            .background(Color("MAV-White"))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
        }
    
}

// TrainView_Previews: PreviewProvider {
//    static var previews: some View {
//        //TrainView()
//    }
//}
