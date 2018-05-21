//
//  LocationProtocolExtension.swift
//  ToDo
//
//  Created by Laurence Wingo on 5/21/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation


extension Location: Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        if lhs.coordinate?.latitude != rhs.coordinate?.latitude {
            return false
        }
        if lhs.coordinate?.longitude != rhs.coordinate?.longitude {
            return false
        }
        if lhs.name != rhs.name {
            return false
        }
        return true
    }
}
