 //
//  ContentView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel(authService: AuthService())
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
