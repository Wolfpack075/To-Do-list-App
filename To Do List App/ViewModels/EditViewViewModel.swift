//
//  EditViewViewModel.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 25/11/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class EditViewViewModel : ObservableObject {
    @Published var title = ""
    @Published var note = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    func save(userId:String) {
        guard canSave else {
            return
        }
        
        // get current user id
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        // create a model
        let newId = UUID().uuidString
        let newItem = ToDoListItem(
            id: newId,
            title: title,
            note: note,
            dueDate: dueDate.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: false
        )
        // save model
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
        //
    }
    
    var canSave : Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        return true
    }
}
