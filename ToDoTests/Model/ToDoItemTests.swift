//
//  ToDoItemTests.swift
//  ToDoTests
//
//  Created by Cosmic Arrows, LLC on 4/29/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import XCTest
//this keyword called @testable makes the ToDo module accessible to the test case.
@testable import ToDo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Initializer_WhenGivenTitleSetsTitle() {
        let item = ToDoItem.init(title: "Foo")
        //we can create an assert to ensure this unit test passes
        XCTAssertNotNil(item.title, "should set title")
    }
    
    func test_Initializer_WhenGivenDescription_SetsDescription() {
        let item = ToDoItem.init(title: "", itemDescription: "Bar")
        XCTAssertEqual(item.itemDescription, "Bar", "should set itemDescription")
    }
    
    //ToDoItems should also have a timeStamp, lets test the initialization of a ToDoItem with a timestamp
    func test_Initializer_WhenGivenTimestamp_SetsTimestamp() {
        let item = ToDoItem.init(title: "", timestamp: 0.0)
        XCTAssertEqual(item.timestamp, 0.0, "should set timestamp")
    }
    
    //ToDoItem instances will have a location property as well that should consist of both a name and an coordinate which is not required
    func test_Initializer_WhenGivenLocation_SetsLocation() {
        let location = Location.init(name: "Foo")
        let item = ToDoItem.init(title: "", location: location)
        
        XCTAssertEqual(item.location?.name, location.name, "should set location")
    }
}
