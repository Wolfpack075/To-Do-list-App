//
//  User.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//

import Foundation

struct User: Codable {
    let id : String
    let name : String
    let email : String
    let joined : TimeInterval
}
