//
//  ContentViewModel.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/17/25.
//

import Foundation
import FirebaseAuth
import Combine

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    private let authService: AuthService
    private var cancellables = Set<AnyCancellable>()
    
    init(authService: AuthService) {
        self.authService = authService
        
        setupSubscribers()
        authService.updateUserSession()
    }
    
    private func setupSubscribers() {
        authService.$userSession.sink { [weak self] user in
            self?.userSession = user
        }.store(in: &cancellables)
    }
}
