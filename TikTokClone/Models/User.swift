//
//  User.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/18/25.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let username: String
    let email: String
    let fullname: String
    var bio: String?
    var profileImageUrl: String?
}
