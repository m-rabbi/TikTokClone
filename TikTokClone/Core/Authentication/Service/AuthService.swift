//
//  AuthService.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/17/25.
//

import FirebaseAuth

@MainActor
class AuthService {
    @Published var userSession: FirebaseAuth.User?
    
    private let userService = UserService()
    
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
            self.userSession = result.user
            try await uploadUserData(id: result.user.uid, withEmail: email, username: username, fullname: fullname)
        } catch {
            print("DEBUG: Error creating user: \(error.localizedDescription)")
            throw error
        }
    }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    private func uploadUserData(id: String, withEmail email: String, username: String, fullname: String) async throws {
        let user = User(id: id, username: username, email: email, fullname: fullname)
        try await userService.uploadUserData(user)
    }
}
