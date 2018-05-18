//
//  ItemListViewControllerTest.swift
//  ToDoTests
//
//  Created by Laurence Wingo on 5/17/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemListViewControllerTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_TableViewIsLoadedAfterViewDidLoad(){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ItemListViewController")
        let sut = viewController as! ItemListViewController
        _ = sut.view
        XCTAssertNotNil(sut.tableView)
    }
    
    func test_loadingTableViewLoadsTheDatasource(){
       //storyboard is a class
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        //using the storyboard reference to instantiate a view Controller based on the identirifer and then casts this reference to a ItemListViewController blueprint since ItemListViewController inherits from UIViewController
        let viewController = storyboard.instantiateViewController(withIdentifier: "ItemListViewController")
        //assign a copy of viewController to sut, and then cast it to the type of ItemListViewController since viewController is of type UIViewController anyway from the storyboard.instantiateViewController property
        let sut = viewController as! ItemListViewController
        //send a message to the view property so that it will call viewDidLoad()
        _ = sut.view
        XCTAssertTrue(sut.tableView.dataSource is ItemListDataProvider)
        
    }
    
}
