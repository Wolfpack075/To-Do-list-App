//
//  ToDoListView.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    @StateObject var viewModel : ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
        self._viewModel = StateObject(
            wrappedValue: ToDoListViewViewModel(userId: userId)
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete"){
                                // Delete
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Notes")
            .toolbar {
                Button {
                    // Action
                    viewModel.showingNewItemView = true
                } label : {
                    Image(systemName: "plus")
                }
            }
            // switching window
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: 
                                $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
