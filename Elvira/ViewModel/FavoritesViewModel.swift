//
//  FavoritesViewModel.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 04. 06..
//

import Foundation

class FavoritesViewModel: ObservableObject{
    @Published var favorites: [Favorite]
    
    
    init(){
        // Itt kell betölteni a UserDefaultsból
        favorites = []
    }
    
    func addFavorite(favorite: Favorite){
        favorites.append(favorite)
    }
    
    func deleteFavorite(favorite: Favorite){
        let index = favorites.firstIndex(where: { $0.id == favorite.id })
        if index != nil {
            favorites.remove(at: index!)
        }
    }
                    
    
   
    
}
