//
//  ProfileViewViewModel.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ProfileViewViewModel : ObservableObject {
    init() {}
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
    @Published var user:User? = nil
    @Published var Uid:String? = ""
    func fetchUser() {
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users").document(userId).getDocument {[weak self] snapshot, error in
            guard let data = snapshot?.data(), error == nil else {
                return
            }
            self?.Uid = data["id"] as? String ?? ""
            DispatchQueue.main.async {
                self?.user = User(
                    id: data["id"] as? String ?? "",
                    name: data["name"] as? String ?? "",
                    email: data["email"] as? String ?? "",
                    joined: data["joined"] as? TimeInterval ?? 0
                )
            }
        }
    }
    func logOut() {
        do {
            try Auth.auth().signOut()
        }
        catch {
            print(error)
        }
    }
}
