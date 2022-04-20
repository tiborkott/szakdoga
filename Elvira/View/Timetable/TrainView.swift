//
//  TrainView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import SwiftUI

struct TrainView: View {
    @EnvironmentObject var trainListViewModel: TrainListViewModel
    @EnvironmentObject var favoritesViewModel: FavoritesViewModel
    var from: String
    var fromtime: String
    var to: String
    var totime: String
    var timetable: Timetable
    
    
    var body: some View {
            VStack {
                HStack {
                    VStack{
                        Image(systemName: "train.side.front.car").foregroundColor({
                            trainTypeColor(timetable: timetable)
                        }())
                        .padding(.leading, 10)
                        .padding(.top, 16)
                        .padding(.bottom, 16)
                       
                        
                        Button () {
                            favoritesViewModel.addFavorite(favorite: Favorite(from: from,to: to,department: fromtime,arrival: totime,type: trainListViewModel.trainType(timetable: timetable)))
                            favoritesViewModel.setNotifications()
                        }label: {
                            if trainListViewModel.alreadyFavorite(favoritesViewModel: favoritesViewModel, favorite: Favorite(from: from,to: to,department: fromtime,arrival: totime,type: trainListViewModel.trainType(timetable: timetable))){
                                Image(systemName: "heart.fill").foregroundColor(Color.red)
                                    .padding(.leading, 10)
                                    .padding(.bottom, 24)
                            }else{
                                Image(systemName: "heart").foregroundColor(Color("MAV-Black"))
                                    .padding(.leading, 10)
                                    .padding(.bottom, 24)
                            }
                            
                           
                        }.disabled(trainListViewModel.alreadyFavorite(favoritesViewModel: favoritesViewModel, favorite: Favorite(from: from, to: to,department: fromtime,arrival: totime,type: trainListViewModel.trainType(timetable: timetable))))
                        
                        Spacer()
                    }
                    
                        
                    VStack(alignment: .leading) {
                        Text(from)
                            .padding(.bottom, 4)
                        Text(fromtime)
                        Text(timetable.details[0].depReal)
                            .foregroundColor(Color.red)
                    }
                    .padding(10)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text(to)
                            .padding(.bottom, 4)
                        Text(totime)
                        Text("  ")
                    }
                    .padding(10)
                    
                    VStack{
                        NavigationLink(destination: DetailView(timetable: timetable)){
                            Image(systemName: "chevron.right").foregroundColor(Color("MAV-Blue"))
                        }
                        .padding(10)
                    }
                    
                    
                }
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.95,
                    height: UIScreen.main.bounds.size.height * 0.15)
            .background(Color("MAV-White"))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
        }
    
}

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
