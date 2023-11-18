//
//  ToDoListItem.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//

import Foundation

struct ToDoListItem : Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state 
    }
}
