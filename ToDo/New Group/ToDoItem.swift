//
//  ToDoItem.swift
//  ToDo
//
//  Created by Cosmic Arrows, LLC on 4/29/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation
//does it matter if I put the code on the inside or the outside?
struct ToDoItem: Equatable {
    static func == (lhs: ToDoItem, rhs: ToDoItem) -> Bool {
        if lhs.location?.name != rhs.location?.name {
            return false
        }
        return true
    }
    
    
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?

    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}
