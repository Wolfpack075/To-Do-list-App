//
//  ContentView.swift
//  To Do List App
//
//  Created by Shoumik Barman Polok on 11/11/23.
//

import SwiftUI
import CoreData

struct MainView: View {
    
    var body: some View {
        LoginView()
    }
}

#Preview {
    MainView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
