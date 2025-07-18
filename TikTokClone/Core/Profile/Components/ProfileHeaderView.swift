//
//  ProfileHeaderView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/16/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                // username
                Text("@\(user.username)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            // stats view
            HStack(spacing: 16) {
                UserStatView(value: 5, title: "Following")
                
                UserStatView(value: 1, title: "Followers")

                UserStatView(value: 7, title: "Likes")

            }
            
            // aciton button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 400, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView(user: DeveloperPreview.user)
}
