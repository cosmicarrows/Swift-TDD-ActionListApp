//
//  ToDoItem.swift
//  ToDo
//
//  Created by Cosmic Arrows, LLC on 4/29/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation

//Nice to see a model being created from a struct instaed of a class during this example.  I'll be more versatile.

struct ToDoItem {
    
    //we need to add a property of type string for the title
    //I also noticed that this is a constant so I need to remind myself what would happen if a user wanted to edit their to-do item title!
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    //oh cool! We're about to add a custom struct object to another custom struct object
    let location: Location?
    
    //in order to make the first test case pass, we'll add an initializer that sets itemDescription to nil as a default value.
    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
    
}
