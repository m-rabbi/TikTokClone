//
//  Firestore+Constants.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/18/25.
//

import Foundation
import FirebaseFirestore

struct FirestoreConstants {
    static let Root = Firestore.firestore()
    
    static let UsersCollection = Root.collection("users")
}
