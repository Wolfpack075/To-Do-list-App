//
//  To_Do_List_AppApp.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//
import FirebaseCore
import SwiftUI

@main
struct To_Do_List_AppApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        
        }
    }
}
