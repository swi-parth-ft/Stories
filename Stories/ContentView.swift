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
    
    var body: some View {
        VStack {
            TextField("email", text: $email)
            TextField("Password", text: $password)
            Button("signup", action: register)
            Button("Login", action: login)
        }
        .padding()
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let result = result {
                print("Signed up!")
            }
        }
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let result = result {
                print("Logged In!")
            }
        }
    }
    
 
}



#Preview {
    ContentView()
}
