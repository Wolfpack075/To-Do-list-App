//
//  EditView.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 25/11/23.
//

import SwiftUI

struct EditView: View {
    @StateObject var viewModel = EditViewViewModel()
    var userId:String
    
    init(userId:String) {
        self.userId = userId
    }
    
    var body: some View {
        VStack {
            Text("Edit Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
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
                        viewModel.save(userId:userId)
//                        newItemPresented = false
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
            }
        }
    }
}

#Preview {
    EditView(userId: "")
}
