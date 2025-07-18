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
struct UserService: UserServiceProtocol {
    func fetchCurrentUser() async throws -> User? {
        guard let currentUid = Auth.auth().currentUser?.uid else { return nil }
        return try await FirestoreConstants.UsersCollection.document(currentUid).getDocument(as: User.self)
    }
    
    func uploadUserData(_ user: User) async throws {
        do {
            let userData = try Firestore.Encoder().encode(user)
            try await FirestoreConstants.UsersCollection.document(user.id).setData(userData)
        } catch {
            throw error
        }
    }
    
    func fetchUsers() async throws -> [User] {
        let snapshot = try await FirestoreConstants.UsersCollection.getDocuments()
        return snapshot.documents.compactMap( {try? $0.data(as: User.self)} )
    }
}

// MARK: - MOCK
struct MockUserService: UserServiceProtocol {
    
    func fetchUsers() async throws -> [User] {
        return DeveloperPreview.users
    }
}
