//
//  HomeView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 19..
//

import SwiftUI

struct HomeView: View {
    @AppStorage ("notification") var  notification: Bool = false
    @ObservedObject var networkManeger = NetworkManager()
    @StateObject var favoritesViewModel = FavoritesViewModel()
    @StateObject var trainListViewModel = TrainListViewModel()
    @StateObject var searchViewModel = SearchViewModel()
    
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                SearchView(){
                    SearchViewModel.save(history: Array(searchViewModel.history)){ result in
                        if case .failure(let error) = result {
                            fatalError(error.localizedDescription)
                        }
                    }
                }
                    .offset(y: 30)
                FavoritesView(){
                    FavoritesViewModel.save(favorites: favoritesViewModel.favorites){ result in
                        if case .failure(let error) = result {
                            fatalError(error.localizedDescription)
                        }
                    }
                    
                }
                .offset(y: 30)
            }
            .alert(isPresented: $networkManeger.notConnected){
                Alert(title: Text("Nincs internet kapcsolat"), message: Text(networkManeger.connectionDescription),  dismissButton: Alert.Button.default(
                    Text("Ok"), action: {
                        let settingsURL = URL(string: UIApplication.openSettingsURLString)
                        UIApplication.shared.canOpenURL(settingsURL!)
                        UIApplication.shared.open(settingsURL!)

                    })
                )
            }
            .background(Color("MAV-LightGray"))

        }
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        .environmentObject(favoritesViewModel)
        .environmentObject(trainListViewModel)
        .environmentObject(searchViewModel)
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
            
            SearchViewModel.load { result in
                switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let history):
                        searchViewModel.history = Set(history)
                    }
            }
            if !notification {
                favoritesViewModel.requestAuthorization()
            }
            
        }
    }
}
