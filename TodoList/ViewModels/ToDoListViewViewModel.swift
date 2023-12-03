//
//  ToDoListViewViewModel.swift
//  TodoList
//
//  Created by younghoonC on 2023/11/30.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    func delete(id: String) {
        let db = Firestore.firestore()
        
        /// Delete to do list item
        /// - Parameter id: Item to delete
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
