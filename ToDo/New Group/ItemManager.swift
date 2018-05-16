//
//  ItemManager.swift
//  ToDo
//
//  Created by Laurence Wingo on 5/16/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation

class ItemManager: NSObject {
    var toDoCount = 0
    var doneCount = 0
    func add(item: ToDoItem) {
        toDoCount += 1
    }
}
