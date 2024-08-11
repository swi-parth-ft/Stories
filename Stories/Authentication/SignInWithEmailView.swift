//
//  SignInWithEmailView.swift
//  Stories
//
//  Created by Parth Antala on 8/11/24.
//

import SwiftUI
import Firebase

final class SignInEmailViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
}
struct SignInWithEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    var body: some View {
        VStack {
            TextField("Email..", text: $viewModel.email)
            TextField("Email..", text: $viewModel.password)
            Button {
                
            } label: {
                Text("Sign in")
            }
        }
    }
}

#Preview {
    SignInWithEmailView()
}
