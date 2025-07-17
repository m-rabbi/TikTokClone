//
//  LoginViewModel.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/17/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    private let service: AuthService
    
    init(authService: AuthService) {
        self.service = authService
    }
    
    func login(withEmail email: String, password: String) async {
        do {
            try await service.login(withEmail: email, passoword: password)
        } catch {
            print("DEBUG: Did fail to log in with error: \(error.localizedDescription)")
        }
    }
}
