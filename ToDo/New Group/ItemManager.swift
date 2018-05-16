//
//  ItemManager.swift
//  ToDo
//
//  Created by Laurence Wingo on 5/16/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation

class ItemManager: NSObject {
    var toDoCount: Int {return toDoItems.count}
    var doneCount: Int {return doneItems.count}
    //no one else can access this variable
    private var toDoItems: [ToDoItem] = []
    private var doneItems: [ToDoItem] = []
    
    
    func add(item: ToDoItem) {
        toDoItems.append(item)
    }
    
    func item(findItemAtIndex index: Int) -> ToDoItem {
        let foundItem = toDoItems[index]
        return foundItem
    }
    
    func checkItem(index: Int){
        let item = toDoItems.remove(at: index)
        doneItems.append(item)
    }
    
    func doneItem(at index: Int) -> ToDoItem {
        return doneItems[index]
    }
    
}
