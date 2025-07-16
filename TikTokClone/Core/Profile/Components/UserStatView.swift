//
//  UserStatView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/16/25.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}


#Preview {
    UserStatView(value: 5, title: "Followers")
}
