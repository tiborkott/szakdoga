//
//  FavoritesViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 26..
//

import Foundation


class FavoritesViewModel: ObservableObject{
    @Published var favorites : [Favorite] = []
    
    
    func addFavorite(favorite: Favorite){
        favorites.append(favorite)
    }
    
    func removeFavorite(place: Int) {
        favorites.remove(at: place)
    }
    
}
