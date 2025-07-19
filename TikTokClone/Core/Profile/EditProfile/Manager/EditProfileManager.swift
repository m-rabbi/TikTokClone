//
//  EditProfileManager.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/19/25.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class EditProfileManager: ObservableObject {
    private let imageUploader: ImageUploader
    
    init(imageUploader: ImageUploader) {
        self.imageUploader = imageUploader
    }
    
    func uploadProfileImage(_ uiImage: UIImage) async {
        do {
            let profileImageUrl = try await imageUploader.uploadImage(image: uiImage)
            try await updateUserProfileUrl(profileImageUrl)
        } catch {
            print("DEBUG: Failed to upload profile image")
        }

    }
    
    private func updateUserProfileUrl(_ imageUrl: String?) async throws {
        guard let imageUrl else { return }
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        
        try await FirestoreConstants.UsersCollection.document(currentUid).updateData([
            "profileImageUrl": imageUrl
        ])
    }
}
