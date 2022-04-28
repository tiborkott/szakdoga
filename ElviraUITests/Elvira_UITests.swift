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

    func test_initialState(){
        XCTAssertTrue(app.scrollViews.otherElements.staticTexts["Menetrend"].exists)
        XCTAssertTrue(app.scrollViews.otherElements.textFields["Honnan?"].exists)
        XCTAssertTrue(app.scrollViews.otherElements.textFields["Hova?"].exists)
        XCTAssertTrue(app.scrollViews.otherElements.buttons["Keresés"].exists)
        XCTAssertTrue(app.scrollViews.otherElements.buttons["Clock"].exists)
        XCTAssertTrue(app.scrollViews.otherElements.staticTexts["Kedvencek"].exists)
        app.scrollViews.otherElements.buttons["Clock"].tap()
        XCTAssertTrue(app.scrollViews.otherElements.staticTexts["Keresési előzmények"].exists)
        app.scrollViews.otherElements.buttons["Clock"].tap()
    }
    
    func test_searchFunction(){
        XCTAssertFalse(app.scrollViews.otherElements.buttons["Keresés"].isEnabled)
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
        
        XCTAssertTrue(app.scrollViews.otherElements.buttons["Keresés"].isEnabled)
        
        app.scrollViews.otherElements.buttons["Keresés"].tap()
        app.navigationBars["Vonatok"].staticTexts["Vonatok"].tap()
        XCTAssertTrue(app.navigationBars["Vonatok"].staticTexts["Vonatok"].exists)
    }
    
    func test_navigationFlow(){
        
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
        
        app.scrollViews.otherElements.containing(.image, identifier:"train.side.front.car").children(matching: .button).matching(identifier: "Forward").element(boundBy: 0).tap()
        XCTAssertTrue(app.navigationBars["Részletek"].exists)
        app.navigationBars["Részletek"].buttons["Back"].tap()
        XCTAssertTrue(app.navigationBars["Vonatok"].exists)
        app.navigationBars["Vonatok"].buttons["Back"].tap()
       
        XCTAssertTrue(app.scrollViews.otherElements.textFields["Honnan?"].isHittable)
        XCTAssertTrue(app.scrollViews.otherElements.textFields["Hova?"].isHittable)
    }
    
    func test_addFavorite(){
        
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
        app.scrollViews.otherElements.children(matching: .button).matching(identifier: "Love").element(boundBy: 0).tap()
        
        XCTAssertTrue(app.scrollViews.otherElements.children(matching: .button).matching(identifier: "Love").element(boundBy: 0).isHittable)
        XCTAssertTrue(app.scrollViews.otherElements.children(matching: .button).matching(identifier: "Love").element(boundBy: 0).exists)
        
        app.navigationBars["Vonatok"].buttons["Back"].tap()
        app.scrollViews.otherElements.containing(.staticText, identifier:"Menetrend").element.swipeUp()
        XCTAssertTrue(app.scrollViews.otherElements.scrollViews.otherElements.switches["0"].exists)
        XCTAssertTrue(app.scrollViews.otherElements.scrollViews.otherElements.switches["0"].isHittable)
        app.scrollViews.otherElements.scrollViews.otherElements.switches["0"].tap()
        XCTAssertTrue(app.scrollViews.otherElements.scrollViews.otherElements.switches["1"].exists)
        XCTAssertTrue(app.scrollViews.otherElements.scrollViews.otherElements.switches["1"].isHittable)
        app.scrollViews.otherElements.scrollViews.otherElements.switches["1"].tap()
        XCTAssertTrue(app.scrollViews.otherElements.scrollViews.otherElements.buttons["Trash"].exists)
        XCTAssertTrue(app.scrollViews.otherElements.scrollViews.otherElements.buttons["Trash"].isHittable)
        app.scrollViews.otherElements.scrollViews.otherElements.buttons["Trash"].tap()
        XCTAssertFalse(app.scrollViews.otherElements.scrollViews.otherElements.buttons["Trash"].exists)
    }
    
    func test_transferList(){
        app.scrollViews.otherElements.textFields["Honnan?"].tap()
        app.keys["S"].tap()
        app.keys["z"].tap()
        app.keys["o"].tap()
        app.keys["m"].tap()
        app.keys["b"].tap()
        app.keys["a"].tap()
        app.keys["t"].tap()
        app.keys["h"].tap()
        app.keys["e"].tap()
        app.keys["l"].tap()
        app.keys["y"].tap()
        app/*@START_MENU_TOKEN@*/.buttons["szombathely"]/*[[".keyboards.buttons[\"szombathely\"]",".buttons[\"szombathely\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
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
        
        app.scrollViews.otherElements.containing(.image, identifier:"train.side.front.car").children(matching: .button).matching(identifier: "Forward").element(boundBy: 0).tap()
        
        XCTAssertTrue(app.scrollViews.otherElements.staticTexts["Szombathely"].exists)
        app.scrollViews.otherElements.staticTexts["Szombathely"].swipeUp()
        
        XCTAssertTrue(app.images["Timer"].exists)
        XCTAssertTrue(app.images["tram.circle"].exists)
        XCTAssertTrue(app.images["wallet.pass"].exists)
        app.images["Timer"].tap()
        app.images["tram.circle"].tap()
        app.images["wallet.pass"].tap()
                
    }
}
