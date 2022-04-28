//
//  FavoritesViewModel_Test.swift
//  ElviraTests
//
//  Created by Kött Tibor on 2022. 04. 26..
//

import XCTest

@testable import Elvira
class FavoritesViewModel_Test: XCTestCase {

    func test_FavoritesViewModel_initialState() throws {
        let favoritesViewModel = FavoritesViewModel()
        XCTAssertNotNil(favoritesViewModel.favorites)
        XCTAssertTrue(favoritesViewModel.favorites.isEmpty)
    }
    
    func test_FavoritesViewModel_addFavorite() throws {
        let favoritesViewModel = FavoritesViewModel()
        favoritesViewModel.addFavorite(
            favorite: Favorite(
                from: "Kelenföld",
                to: "Szombathely",
                department: "17:10",
                arrival: "18:13",
                type: "Gyors"
            )
        )
        XCTAssertGreaterThan(favoritesViewModel.favorites.count, 0)
    }
    
    func test_FavoritesViewModel_deleteFavorite_exists() throws {
        let favoritesViewModel = FavoritesViewModel()
        let favorite = Favorite(
            from: "Kelenföld",
            to: "Szombathely",
            department: "17:10",
            arrival: "18:13",
            type: "Gyors"
        )
        
        favoritesViewModel.addFavorite(favorite: favorite)
        
        favoritesViewModel.deleteFavorite(favorite: favorite)
        XCTAssertEqual(favoritesViewModel.favorites.count, 0)
    }
    
    func test_FavoritesViewModel_deleteFavorite_notExists() throws {
        let favoritesViewModel = FavoritesViewModel()
        let favorite = Favorite(
            from: "Kelenföld",
            to: "Szombathely",
            department: "17:10",
            arrival: "18:13",
            type: "Gyors"
        )
        
        favoritesViewModel.addFavorite(favorite: Favorite(
            from: "Nyugati",
            to: "Zugló",
            department: "17:10",
            arrival: "18:13",
            type: "Gyors"
        ))
        
        favoritesViewModel.deleteFavorite(favorite: favorite)
        XCTAssertNotEqual(favoritesViewModel.favorites.count, 0)
    }
    
    func test_FavoritesViewModel_notificationsEnabled() throws {
        let favoritesViewModel = FavoritesViewModel()
        let favorite = Favorite(
            enabled: true,
            from: "Kelenföld",
            to: "Szombathely",
            department: "17:10",
            arrival: "18:13",
            type: "Gyors"
        )
        
        favoritesViewModel.addFavorite(favorite: favorite)
        favoritesViewModel.setNotifications()
        UNUserNotificationCenter.current().getPendingNotificationRequests(completionHandler: { notifications in
                XCTAssertNotNil(notifications)
            }
        )
    }
    
    func test_FavoritesViewModel_notificationsDisabled() throws {
        let favoritesViewModel = FavoritesViewModel()
        let favorite = Favorite(
            enabled: false,
            from: "Kelenföld",
            to: "Szombathely",
            department: "17:10",
            arrival: "18:13",
            type: "Gyors"
        )
        
        favoritesViewModel.addFavorite(favorite: favorite)
        favoritesViewModel.setNotifications()
        UNUserNotificationCenter.current().getPendingNotificationRequests(completionHandler: { notifications in
                XCTAssertNil(notifications)
            }
        )
    }

}
