//
//  TrainListViewModel_Test.swift
//  ElviraTests
//
//  Created by Kött Tibor on 2022. 04. 25..
//

import XCTest
@testable import Elvira
class TrainListViewModel_Test: XCTestCase {
    
    func test_TrainListViewModel_initialState() throws {
        let trainListViewModel = TrainListViewModel()
        XCTAssertNil(trainListViewModel.timetables)
        XCTAssertFalse(trainListViewModel.loaded)
    }

    func test_TrainListViewModel_fetchingData() throws {
        let trainListViewModel = TrainListViewModel()
        let expectation = expectation(description: "Fetch")
        trainListViewModel.fetchElvira(from: "Cegléd", to: "Zugló")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 6.0)

        
        XCTAssertNotNil(trainListViewModel.timetables)
        XCTAssertTrue(trainListViewModel.loaded)
    }
}
