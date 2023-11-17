//
//  ToDoListViewViewModel.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel : ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId 
    }
    
    /// delete to do list item
    /// Parameter id: item id to delete
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
