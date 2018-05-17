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
    //We would like to be able to compare to-do items in case there are two items that are similar in the ocllection
    func text_EqualItems_AreEqual(){
        let first = ToDoItem.init(title: "Foo")
        let second = ToDoItem.init(title: "Foo")
        XCTAssertEqual(first, second)
    }
    
    //edgeCase testing if two location properties are not equal
    func test_Items_WhenLocationDiffers_AreNotEqual(){
        let first = ToDoItem.init(title: "", location: Location.init(name: "Foo"))
        let second = ToDoItem.init(title: "", location: Location.init(name: "Bar"))
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenOneLocationIsNilAndTheOtherIsNot() {
        let first = ToDoItem.init(title: "", location: Location.init(name: "Foo"))
        let second = ToDoItem.init(title: "", location: nil)
        
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenTimeStampsDiffer(){
        let first = ToDoItem.init(title: "Foo", timestamp: 1.0)
        let second = ToDoItem.init(title: "Foo", timestamp: 0.0)
        
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenDescriptionsDiffer(){
        let first = ToDoItem.init(title: "Foo", itemDescription: "Bar")
        let second = ToDoItem.init(title: "Foo", itemDescription: "Baz")
        XCTAssertNotEqual(first, second)
    }
    
    
}
