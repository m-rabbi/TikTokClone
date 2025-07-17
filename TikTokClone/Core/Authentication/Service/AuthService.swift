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
        print("DEBUG: User info created: \(username), \(fullname)")
    }
    
    func signout() {
        
    }
}
