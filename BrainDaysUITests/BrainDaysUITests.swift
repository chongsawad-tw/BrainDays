//
//  BrainDaysUITests.swift
//  BrainDaysUITests
//
//  Created by Chongsawad Saiaram on 20/12/23.
//

import XCTest

final class BrainDaysUITests: XCTestCase {
    var app: XCUIApplication!
    override func setUpWithError() throws {
        continueAfterFailure = true
        app = XCUIApplication()
        Task {
            await setupSnapshot(app)
        }
        app.launch()
    }
    
    func testSnapshotHomeScreen() throws {
        let expectation = expectation(description: "snapshot")
        Task {
            await snapshot("01-HomeScreen")
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5)
    }
}
