//
//  UserCell.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/16/25.
//

import SwiftUI

struct UserCell: View {
    let user: User
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 44, height: 44)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading, spacing: 1) {
                Text(user.username)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text(user.fullname)
                    .font(.footnote)
            }
            .foregroundStyle(.black)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell(user: DeveloperPreview.user)
}
