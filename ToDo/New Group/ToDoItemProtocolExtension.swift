//
//  ToDoItemProtocolExtension.swift
//  ToDo
//
//  Created by Laurence Wingo on 5/21/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation

extension ToDoItem: Equatable {
    static func == (lhs: ToDoItem, rhs: ToDoItem) -> Bool {
        if lhs.location != rhs.location {
            return false
        }
        if lhs.timestamp != rhs.timestamp {
            return false
        }
        if lhs.itemDescription != rhs.itemDescription {
            return false
        }
        if lhs.title != rhs.title {
            return false
        }
        return true
    }
}
