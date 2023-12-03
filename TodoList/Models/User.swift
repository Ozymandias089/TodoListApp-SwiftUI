//
//  User.swift
//  TodoList
//
//  Created by younghoonC on 2023/11/30.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
