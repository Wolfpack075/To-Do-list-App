//
//  LoginView.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 11/11/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Notes", subtitle: "All thoughts count", angle: 15, background: .pink)
                
                // Login Form
                Form {
                    if (!viewModel.errorMessage.isEmpty) {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Enter Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                  
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        //Attemp Log in
                        viewModel.login()
                    }
//                    .padding().
                }
                .offset(y: -50)
                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account", destination:RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
