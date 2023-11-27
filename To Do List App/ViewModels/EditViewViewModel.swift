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
    @Published var id : String
    @Published var title : String
    @Published var note: String
    @Published var dueDate : Date
    @Published var Due : TimeInterval
    @Published var showAlert = false
    @Published var showEditView = false 
    
    init(item:ToDoListItem) {
        self.id = item.id
        self.title = item.title
        self.note = item.note
        self.Due = item.dueDate
        self.dueDate = Date()
    }
    
    func save() {
        guard canSave else {
            return
        }
        
        // get current user id
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        // create a model
        //let newId = UUID().uuidString
        let newItem = ToDoListItem(
            id: id,
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
            .document(id)
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
