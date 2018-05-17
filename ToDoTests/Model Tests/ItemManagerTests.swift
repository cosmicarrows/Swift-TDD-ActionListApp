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
    
    //provide a method that returns an Item
    func test_ItemManagerReturns_NewlyAddedItem(){
        let item = ToDoItem.init(title: "")
        itemManager.add(item: item)
        //inside this box we put a...............the returned object from this instance method
        let returnedItem = itemManager.item(findItemAtIndex: 0)
        XCTAssertEqual(returnedItem.title, item.title)
    }
    
    //The user has to be able to check the items....
    func test_CheckItemAt_ChangesCounts(){
        itemManager.add(item: ToDoItem.init(title: ""))
        itemManager.checkItem(index:0)
        //When the user checks an item, toDoCount should decrease and doneCount should increase
        XCTAssertEqual(itemManager.toDoCount, 0)
        XCTAssertEqual(itemManager.doneCount, 1)
    }
    
    //When checking an item, it should be removed from the toDoItems array
    func test_CheckItemAt_RemovesFromToDoItems(){
        let first = ToDoItem.init(title: "First")
        let second = ToDoItem.init(title: "Second")
        itemManager.add(item: first)
        itemManager.add(item: second)
        itemManager.checkItem(index: 0)
        XCTAssertEqual(itemManager.item(findItemAtIndex: 0).title, "Second")
    }
   
    //the checked items will be shown below the unchecked items. This means that ItemManager also needs to provide a method that returns checked items
    func test_DoneItemAt_ReturnsCheckedItem(){
        let item = ToDoItem.init(title: "Foo")
        itemManager.add(item: item)
        itemManager.checkItem(index: 0)
        let returnedItem = itemManager.doneItem(at: 0)
        XCTAssertEqual(item.title, returnedItem.title)
    }
    
    func test_RemoveAll_ResultsInCountsBeZero(){
        itemManager.add(item: ToDoItem.init(title: "Foo"))
        itemManager.add(item: ToDoItem.init(title: "Bar"))
        itemManager.checkItem(index: 0)
        
        XCTAssertEqual(itemManager.toDoCount, 1)
        XCTAssertEqual(itemManager.doneCount, 1)
        
        itemManager.removeAll()
        
        XCTAssertEqual(itemManager.toDoCount, 0)
        XCTAssertEqual(itemManager.doneCount, 0)
    }
    
    //we would like to make sure that each to-do item can only be added to the list once
    func test_noDuplicateToDoItems(){
        itemManager.add(item: ToDoItem.init(title: "Foo"))
        itemManager.add(item: ToDoItem.init(title: "Foo"))
        
        XCTAssertEqual(itemManager.toDoCount, 1)
    }
    
    
}
