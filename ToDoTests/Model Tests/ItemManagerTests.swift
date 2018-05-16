//
//  ItemManagerTests.swift
//  ToDoTests
//
//  Created by Laurence Wingo on 5/13/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemManagerTests: XCTestCase {
    
    var itemManager: ItemManager!
    
    override func setUp() {
        super.setUp()
        itemManager = ItemManager.init()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_ToDoCount_InitiallyIsZero(){
        XCTAssertEqual(itemManager.toDoCount, 0)
    }
    
    func test_DoneCount_InitiallyIsZero(){
        XCTAssertEqual(itemManager.doneCount, 0)
    }
    
    //the ItemManager should be able to add items to the list therefore there should be a method that takes an item
    func test_AddItems_IncreasesToDoCount_ToOne(){
        //assume itemManager has an addItem method...
        itemManager.add(item: ToDoItem.init(title: ""))
        XCTAssertEqual(itemManager.toDoCount, 1)
    }
   
    
}
