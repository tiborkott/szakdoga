//
//  TrainView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import SwiftUI

struct TrainView: View {
    @ObservedObject var trainViewModel = TrainViewModel()
    @ObservedObject var favoritesViewModel = FavoritesViewModel()
    
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
                            trainViewModel.trainTypeColor(timetable: timetable)
                        }())
                        .padding(.leading, 10)
                        .padding(.top, 16)
                        
                        Spacer()
                        
                        
                        Button () {
                            // Kedvencek listához adó function
                            //favoritesViewModel.addFavorite(favorite: Favorite())
                        }label: {
                            Image(systemName: "heart").foregroundColor(Color("MAV-Black"))
                                .padding(.leading, 10)
                                .padding(.bottom, 20)
                        }                       
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
                        NavigationLink(destination: DetailView(details: timetable.details)){
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

// TrainView_Previews: PreviewProvider {
//    static var previews: some View {
//        //TrainView()
//    }
//}
