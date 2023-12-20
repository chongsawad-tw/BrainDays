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
        continueAfterFailure = false
        app = XCUIApplication()
        Task {
            await setupSnapshot(app)
            app.launch()
        }
    }
    
    func testExample() throws {
        Task { await snapshot("01-HomeScreen") }
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
