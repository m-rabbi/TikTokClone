//
//  UserCell.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/16/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 44, height: 44)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading, spacing: 1) {
                Text("test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Test Name")
                    .font(.footnote)
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
