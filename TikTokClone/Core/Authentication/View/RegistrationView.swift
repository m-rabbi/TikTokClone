//
//  RegistrationView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/17/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullname: String = ""
    @State private var username: String = ""
    
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: RegistrationViewModel
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
        
        self._viewModel = StateObject(wrappedValue: RegistrationViewModel(authService: authService))
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            // logo
            Image(.tiktokAppIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            // textfields
            VStack {
                TextField("Enter your email", text: $email)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(StandardTextFieldModifier())
                
                TextField("Enter your full name", text: $fullname)
                    .textInputAutocapitalization(.words)
                    .modifier(StandardTextFieldModifier())
                
                TextField("Enter your username", text: $username)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextFieldModifier())
            }
            
            // sign up button
            Button {
                Task { await viewModel.createUser(withEmail: email, password: password, username: username, fullname: fullname) }
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 400, height: 44)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
            }
            .padding(.vertical)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1 : 0.5)
            
            Spacer()
            
            // login navigation through button
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 2) {
                    Text("Already and account?")
                    
                    Text("Sign in.")
                        .fontWeight(.semibold)
                }
            }
            .font(.footnote)
            .padding(.vertical)

        }
        .navigationBarBackButtonHidden()

    }
}

// MARK: - AuthenticationFormProtocol

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty &&
        email.contains("@") &&
        email.contains(".") &&
        !password.isEmpty &&
        !fullname.isEmpty &&
        !username.isEmpty
        
    }
}

#Preview {
    RegistrationView(authService: AuthService())
}
