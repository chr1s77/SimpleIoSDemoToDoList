//
//  ToDosUITests.swift
//  ToDosUITests
//
//  Created by Christine Julien on 10/16/21.
//

import XCTest

class ToDosUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.tables.containing(.cell, identifier:"Eat pizza").element.tap()
        
        let tablesQuery = app.tables
        tablesQuery.cells["Eat pizza"].children(matching: .other).element(boundBy: 0).children(matching: .other).element.tap()
        app.textFields["Add todo..."].tap()
        app.buttons["Add"].tap()
        
        let eatPizzaStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Eat pizza"]/*[[".cells[\"Eat pizza\"].staticTexts[\"Eat pizza\"]",".staticTexts[\"Eat pizza\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        eatPizzaStaticText.swipeLeft()
        eatPizzaStaticText.swipeLeft()
        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete"]/*[[".cells[\"Eat pizza\"].buttons[\"Delete\"]",".buttons[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {

    }
}
