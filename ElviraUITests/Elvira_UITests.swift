//
//  Elvira_UITests.swift
//  ElviraUITests
//
//  Created by Kött Tibor on 2022. 04. 27..
//

import XCTest

class Elvira_UITests: XCTestCase {
    
    let app = XCUIApplication()
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
    
    }

    func test_typeTextfieldsAndSearchTrains(){
        app.scrollViews.otherElements.textFields["Honnan?"].tap()
        app.keys["M"].tap()
        app.keys["o"].tap()
        app.keys["n"].tap()
        app.keys["o"].tap()
        app.keys["r"].tap()
        
        app.scrollViews.otherElements.textFields["Hova?"].tap()
        app.keys["S"].tap()
        app.keys["z"].tap()
        app.keys["o"].tap()
        app.keys["l"].tap()
        app.keys["n"].tap()
        app.keys["o"].tap()
        app.keys["k"].tap()
        app.scrollViews.otherElements.buttons["Keresés"].tap()
        app.navigationBars["Vonatok"].staticTexts["Vonatok"].tap()
        XCTAssertTrue(app.navigationBars["Vonatok"].staticTexts["Vonatok"].exists)
    }
    
    func test_selectHistorySearchAndSearch(){
        
    }
    
    func test_selectHistorySearchAndSearchAndDetails(){
                
    }

}
