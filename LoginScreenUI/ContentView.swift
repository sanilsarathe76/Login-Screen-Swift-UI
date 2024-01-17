//
//  ContentView.swift
//  LoginScreenUI
//
//  Created by macmini45 on 03/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = ""
    @State private var wrongPassword = ""
    @State private var showingLoginScreen = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
//                        .border(.red, width: CGFloat(wrongUsername))
                    
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
//                        .border(.red, width: CGFloat(wrongUsername))
                    
                    Button("Login") {
                        //Authenticate user
                        authenticateUser(username: username, password: password)
                    }
                    
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                }
            }
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "sanil" {
            wrongUsername = "0"
            if password.lowercased() == "7692" {
                wrongPassword = "0"
                showingLoginScreen = true
            } else {
                wrongPassword = "2"
            }
        } else {
            wrongUsername = "2"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
