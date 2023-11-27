//
//  ToDoListItemView.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    let item : ToDoListItem
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                
                Text(item.note)
                    .font(.system(size: 16))
                    .fontWeight(.light)
                
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date:.abbreviated, time:. shortened))")
                .font(.footnote)
                .foregroundColor(Color(.secondaryLabel))
                
            }
            
            Spacer()
            
            HStack {
                Spacer()
                NavigationLink(destination: EditView(item:item)) {
                    //SmallButton(label: "Edit")
                }
            }
//
//            Button {
////                viewModel.toggleIsDone(item: item)
//                goEdit = true
//                //NavigationLink("Edit", destination: EditView(userId: $viewModel.Uid as? String ?? ""))
//            } label : {
//                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
//                    .foregroundColor(Color.blue)
//            }
//            .sheet(isP
        }
    }
}

//struct SmallButton: View {
//    var label: String
//
//    var body: some View {
//        Button(action: {}) {
//            Text(label)
//                .foregroundColor(.white)
//                .padding(8)
//                .background(Color.blue)
//                .cornerRadius(8)
//        }
//    }
//}

#Preview {
    ToDoListItemView(item: .init(
        id:"123",
        title: "Get milk",
        note : "get milk",
        dueDate: Date().timeIntervalSince1970,
        createdDate: Date().timeIntervalSince1970,
        isDone: true
    ))
}
