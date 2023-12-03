//
//  TodoListApp.swift
//  TodoList
//
//  Created by younghoonC on 2023/11/30.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
