 //
//  ContentView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel
    
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
        
        self._viewModel = StateObject(wrappedValue: ContentViewModel(authService: authService))
    }
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTabView(authService: authService)
            } else {
                LoginView(authService: authService)
            }
        }
    }
}

#Preview {
    ContentView(authService: AuthService())
}
