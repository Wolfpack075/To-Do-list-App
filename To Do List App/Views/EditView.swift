//
//  EditView.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 25/11/23.
//

import SwiftUI

struct EditView: View {
    @StateObject var viewModel : EditViewViewModel
    
    init(item:ToDoListItem){
        self._viewModel = StateObject(
            wrappedValue: EditViewViewModel(item:item)
        )
    }
    var body: some View {
            VStack {
                Text("Edit Item")
                    .font(.system(size: 32))
                    .bold()
                    .padding(.top, 4)
                
                Form {
                    // Title
                    TextField("Title", text:$viewModel.title)
                        .textFieldStyle(DefaultTextFieldStyle())
                    //
                    TextField("Description", text:$viewModel.note)
                    // Due Date
                    DatePicker("Due Date", selection: $viewModel.dueDate)
                        .datePickerStyle(GraphicalDatePickerStyle())
                    //Button
                    TLButton (title: "Save", background: .pink) {
                        if viewModel.canSave {
                            viewModel.save()
                            //print("save edition")
                            viewModel.showEditView = true
                        }
                        else {
                            viewModel.showAlert = true
                        }
                    }
                    .padding()
                    .alert(isPresented: $viewModel.showAlert) {
                        Alert(title: Text("Error"), message: Text("Please fill in all fields and select due date that is today or newer")
                        )
                    }
                    .alert(isPresented: $viewModel.showEditView) {
                        Alert(title: Text("Notes"), message: Text("Your note has been saved."))
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    
                }
        }
    }
}

#Preview {
    EditView(item: .init(
        id:"123",
        title: "Get milk",
        note : "get milk",
        dueDate: Date().timeIntervalSince1970,
        createdDate: Date().timeIntervalSince1970,
        isDone: true
    ))
}
