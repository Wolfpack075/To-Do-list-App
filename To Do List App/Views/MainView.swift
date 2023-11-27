//
//  ContentView.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//

import SwiftUI
import CoreData

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    @StateObject var vm = HomeViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        }
        else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
                .tabItem {
                    Label("Crypto", systemImage: "dollarsign.circle")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
