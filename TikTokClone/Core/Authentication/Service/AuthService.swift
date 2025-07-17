//
//  AuthService.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/17/25.
//

import FirebaseAuth

class AuthService {
    func login(withEmail email: String, passoword: String) async throws {
        print("DEBUG: Logged in with email: \(email)")
    }
    
    func createUser(withEmail email: String, passoword: String, username: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: passoword)
            print("DEBUG: User created with uid: \(result.user.uid)")
        } catch {
            print("DEBU: Error creating user: \(error.localizedDescription)")
            throw error
        }
    }
    
    func signout() {
        
    }
}
