//
//  MainViewViewModel.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//

import FirebaseAuth
import Foundation

class MainViewViewModel : ObservableObject {
    @Published var currentUserId : String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    init() {
        self.handler = Auth.auth().addStateDidChangeListener {
            [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
