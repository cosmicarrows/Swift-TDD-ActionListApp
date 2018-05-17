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
    }
    
    override func tearDown() {
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
    
    func test_EqualLocations_AreEqual(){
        let first = Location.init(name: "Foo")
        let second = Location.init(name: "Foo")
        XCTAssertEqual(first, second)
    }
    
    func test_Locations_WhenLatitudeDiffers_AreNotEqual(){
        let firstCoordinate = CLLocationCoordinate2D.init(latitude: 1.0, longitude: 0.0)
        let first = Location.init(name: "Foo", coordinate: firstCoordinate)
        let secondCoordinate = CLLocationCoordinate2D.init(latitude: CLLocationDegrees.init(), longitude: CLLocationDegrees.init())
        let second = Location.init(name: "Foo", coordinate: secondCoordinate)
        XCTAssertNotEqual(first, second)
    }
    
    //make sure that the locations that differ in terms of longitude are not equal
    func test_Locations_WhenLongitudeDiffers_AreNotEqual(){
        let firstCoordinate = CLLocationCoordinate2D.init(latitude: CLLocationDegrees.init(0.0), longitude: CLLocationDegrees.init(1.0))
        let first = Location.init(name: "Foo", coordinate: firstCoordinate)
        let secondCoordinate = CLLocationCoordinate2D.init(latitude: CLLocationDegrees.init(0.0), longitude: CLLocationDegrees.init(0.0))
        let second = Location.init(name: "Foo", coordinate: secondCoordinate)
        XCTAssertNotEqual(first, second)
    }
    
    
    
}
