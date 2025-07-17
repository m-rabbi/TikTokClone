//
//  RegistrationViewModel.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/17/25.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    private let service: AuthService
    
    init(authService: AuthService) {
        self.service = authService
    }
    
    func createUser(withEmail email: String, password: String, username: String, fullname: String) async {
        do {
            try await service.createUser(withEmail: email, passoword: password, username: username, fullname: fullname)
        } catch {
            print("DEBUG: Did fail to create user with error: \(error.localizedDescription)")
        }
    }
}
