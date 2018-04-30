//
//  LocationTests.swift
//  ToDoTests
//
//  Created by Cosmic Arrows, LLC on 4/29/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import XCTest
import CoreLocation
@testable import ToDo

class LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Initializer_WhenGivenCoordinate_SetsCoordinate() {
        let coordinate = CLLocationCoordinate2D.init(latitude: 1, longitude: 2)
        
        let location = Location.init(name: "", coordinate: coordinate)
        
        XCTAssertEqual(location.coordinate?.latitude, coordinate.latitude)
        XCTAssertEqual(location.coordinate?.longitude, coordinate.longitude)
    }
    
    func test_Initializer_WhenGivenName_SetsName() {
        let location = Location.init(name: "Foo")
        
        XCTAssertEqual(location.name, "Foo")
    }
    
}
