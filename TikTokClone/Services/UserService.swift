//
//  UserService.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/18/25.
//

import FirebaseAuth
import FirebaseFirestore

struct UserService {
    
    func uploadUserData(_ user: User) async throws {
        do {
            let userData = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id).setData(userData)
        } catch {
            throw error
        }
    }
}
