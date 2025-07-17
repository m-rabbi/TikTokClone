//
//  AuthService.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/17/25.
//

import FirebaseAuth

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    
    func updateUserSession() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, passoword: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: passoword)
            self.userSession = result.user
            print("DEBUG: logged in uid: \(result.user.uid)")

        } catch {
            print("DEBUG: Failed to login:\(error.localizedDescription)")
            throw error
        }
    }
    
    func createUser(withEmail email: String, passoword: String, username: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: passoword)
            print("DEBUG: User created with uid: \(result.user.uid)")
        } catch {
            print("DEBUG: Error creating user: \(error.localizedDescription)")
            throw error
        }
    }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
