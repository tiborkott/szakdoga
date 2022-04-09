//
//  HomeView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 19..
//

import SwiftUI

struct HomeView: View {
    @AppStorage ("notification") var  notification: Bool = false
    @StateObject var favoritesViewModel = FavoritesViewModel()
    @StateObject var trainListViewModel = TrainListViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                SearchView().offset(y: 30)
                FavoritesView(){
                    FavoritesViewModel.save(favorites: favoritesViewModel.favorites){ result in
                        if case .failure(let error) = result {
                            fatalError(error.localizedDescription)
                        }
                    }
                    
                }
                .offset(y: 30)
            }
            
            .background(Color("MAV-LightGray"))
            
        }
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        .environmentObject(favoritesViewModel)
        .environmentObject(trainListViewModel)
        .ignoresSafeArea()
        .onAppear {
            FavoritesViewModel.load { result in
                switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let favorites):
                        favoritesViewModel.favorites = favorites
                    }
            }
            
            if !notification {
                favoritesViewModel.requestAuthorization()
            }
            
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
