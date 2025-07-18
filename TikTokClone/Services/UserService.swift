//
//  UserService.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/18/25.
//

import FirebaseAuth
import FirebaseFirestore

// MARK: - Protocol
protocol UserServiceProtocol {
    func fetchUsers() async throws -> [User]
}

// MARK: - Online
struct UserService {
    
    func uploadUserData(_ user: User) async throws {
        do {
            let userData = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id).setData(userData)
        } catch {
            throw error
        }
    }
    
    func fetchUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap( {try? $0.data(as: User.self)} )
    }
}

// MARK: - MOCK
struct MockUserService: UserServiceProtocol {
    
    func fetchUsers() async throws -> [User] {
        return DeveloperPreview.users
    }
}
