//
//  ExploreView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/16/25.
//

import SwiftUI

struct ExploreView: View {
    @StateObject  var viewModel = ExploreViewModel(userService: MockUserService())
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            UserCell(user: user)
                        }
                    }
                }
            }
            .navigationDestination(for: User.self, destination: { user in
                Text("User is \(user.username)")
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
