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
        performNotEqualTestWith(firstName: "Foo", secondName: "Foo", firstLongLat: (1.0, 0.0), secondLongLat: (0.0, 0.0))
    }
    
    //make sure that the locations that differ in terms of longitude are not equal
    func test_Locations_WhenLongitudeDiffers_AreNotEqual(){
        performNotEqualTestWith(firstName: "Foo", secondName: "Foo", firstLongLat: (0.0, 1.0), secondLongLat: (0.0, 0.0))
    }
    
    func performNotEqualTestWith(firstName: String, secondName: String, firstLongLat: (Double, Double)?, secondLongLat: (Double, Double)?, line: UInt = #line) {
        
        var firstCoord: CLLocationCoordinate2D? = nil
        
        if let firstLongLat = firstLongLat {
            firstCoord = CLLocationCoordinate2D.init(latitude: firstLongLat.0, longitude: firstLongLat.1)
        }
        
        let firstLocation = Location.init(name: firstName, coordinate: firstCoord)
        
        var secondCoord: CLLocationCoordinate2D? = nil
        if let secondLongLat = secondLongLat {
            secondCoord = CLLocationCoordinate2D.init(latitude: secondLongLat.0, longitude: secondLongLat.1)
        }
        let secondLocation = Location.init(name: secondName, coordinate: secondCoord)
        
        XCTAssertNotEqual(firstLocation, secondLocation, line: line)
    }
    
    //one location has a coordinate set and the other one does not, they should be considered to be different
    func test_Locations_WhenOnlyOneHasCoordinate_AreNotEqual(){
        performNotEqualTestWith(firstName: "Foo", secondName: "Foo", firstLongLat: (0.0, 0.0), secondLongLat: nil)
    }
    
    func test_Locations_WhenNamesDiffer_AreNotEqual(){
        performNotEqualTestWith(firstName: "Foo", secondName: "Bar", firstLongLat: nil, secondLongLat: nil)
    }
}
