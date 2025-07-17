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
    @State private var fullName: String = ""
    @State private var username: String = ""
    
    @Environment(\.dismiss) var dismiss
    
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
                TextField("Enter your email...", text: $email)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextFieldModifier())
                
                SecureField("Enter your password...", text: $password)
                    .modifier(StandardTextFieldModifier())
                
                TextField("Enter your full name...", text: $fullName)
                    .modifier(StandardTextFieldModifier())
                
                TextField("Enter your username...", text: $username)
                    .modifier(StandardTextFieldModifier())
            }
            
            // sign up button
            Button {
                print("DEBUG: Signup button tapped")
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

#Preview {
    RegistrationView()
}
