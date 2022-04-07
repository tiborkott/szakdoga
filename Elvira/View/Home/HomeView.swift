//
//  HomeView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 19..
//

import SwiftUI

struct HomeView: View {
    @StateObject var favoritesViewModel = FavoritesViewModel()
    @StateObject var trainListViewModel = TrainListViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                SearchView().offset(y: 30)
                FavoritesView().offset(y: 30)
            }
            
            .background(Color("MAV-LightGray"))
            
        }
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        .environmentObject(favoritesViewModel)
        .environmentObject(trainListViewModel)
        .ignoresSafeArea()
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
