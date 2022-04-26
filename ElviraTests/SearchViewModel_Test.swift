//
//  SearchViewModel_Test.swift
//  ElviraTests
//
//  Created by Kött Tibor on 2022. 04. 26..
//

import XCTest

@testable import Elvira
class SearchViewModel_Test: XCTestCase {
    
    func test_SearchViewModel_initialState() throws {
        let searchViewModel = SearchViewModel()
        XCTAssertFalse(searchViewModel.fromBool)
        XCTAssertFalse(searchViewModel.toBool)
        XCTAssertFalse(searchViewModel.historyShow)
        XCTAssertNotNil(searchViewModel.history)
        XCTAssertTrue(searchViewModel.from.isEmpty)
        XCTAssertTrue(searchViewModel.to.isEmpty)
        XCTAssertFalse(searchViewModel.isSreachable())
    }
    
    func test_SearchViewModel_historyShow() throws {
        let searchViewModel = SearchViewModel()
           
        XCTAssertFalse(searchViewModel.historyShow)
        searchViewModel.historyShow = true
        XCTAssertTrue(searchViewModel.historyShow)
    }
                      
    func test_SearchViewModel_setSearchFields() throws {
        let searchViewModel = SearchViewModel()
        
        searchViewModel.setSearchFields(from: "Cegléd", to: "Nyugati")
        XCTAssertEqual(searchViewModel.from, "Cegléd")
        XCTAssertEqual(searchViewModel.to, "Nyugati")
    }
    
    func test_SearchViewModel_isSearchable() throws {
        let searchViewModel = SearchViewModel()
        
        searchViewModel.setSearchFields(from: "Cegléd", to: "Zugló")
        XCTAssertTrue(searchViewModel.isSreachable())
        
        searchViewModel.setSearchFields(from: "Cegléd", to: "WrongText")
        XCTAssertFalse(searchViewModel.isSreachable())
        
        searchViewModel.setSearchFields(from: "WrongText", to: "NoStation")
        XCTAssertFalse(searchViewModel.isSreachable())
        
        searchViewModel.setSearchFields(from: "NoStation", to: "Zugló")
        XCTAssertFalse(searchViewModel.isSreachable())
        
        searchViewModel.setSearchFields(from: "Cegléd", to: "Cegléd")
        XCTAssertFalse(searchViewModel.isSreachable())
    }
    
    func test_SearchViewModel_addHistory() throws {
        let searchViewModel = SearchViewModel()
        
        XCTAssertNotNil(searchViewModel.history)
        searchViewModel.addSearchToHistory(from: "Cegléd", to: "Zugló")
        XCTAssertTrue(searchViewModel.history.contains(Search(from: "Cegléd", to: "Zugló")))
    }
}
