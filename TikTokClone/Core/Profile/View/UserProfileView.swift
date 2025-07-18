//
//  UserProfileView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/18/25.
//

import SwiftUI

struct UserProfileView: View {
    let user: User
    
    var body: some View {
        ScrollView {
            VStack(spacing: 2) {
                // profile header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView()
            }
            .padding(.top)
        }
    }
}

#Preview {
    UserProfileView(user: DeveloperPreview.user)
}
