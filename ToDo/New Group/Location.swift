//
//  Location.swift
//  ToDo
//
//  Created by Cosmic Arrows, LLC on 4/29/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    
    let name: String
    let coordinate: CLLocationCoordinate2D?
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
    
    
}
