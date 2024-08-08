//
//  ContentView.swift
//  Stories
//
//  Created by Parth Antala on 8/7/24.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    var body: some View {
        if isLoggedIn {
            Text("Hello")
            Button("Sign out", action: signOut)
        } else {
            VStack {
                TextField("email", text: $email)
                TextField("Password", text: $password)
                Button("signup", action: register)
                Button("Login", action: login)
            }
            .padding()
        }
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let result = result {
                print("Signed up!")
            }
            if let error = error {
                print("\(error.localizedDescription)")
            }
        }
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let result = result {
                print("Logged In!")
                isLoggedIn = true
            }
            
           
        }
    }
    
    func signOut() {
            do {
                try Auth.auth().signOut()
                isLoggedIn = false
                print("User signed out successfully")
            } catch let signOutError as NSError {
                print("Error signing out: %@", signOutError)
            }
        }
    
 
}



#Preview {
    ContentView()
}
