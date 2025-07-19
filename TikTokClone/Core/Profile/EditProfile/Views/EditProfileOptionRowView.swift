//
//  EditProfileOptionRowView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/19/25.
//

import SwiftUI

struct EditProfileOptionRowView: View {
    let option: EditProfileOptions
    let value: String
    
    var body: some View {
        NavigationLink(value: option) {
            Text(option.title)
            
            Spacer()
            
            Text(value)
        }
        .foregroundStyle(.primary)
    }
}


#Preview {
    EditProfileOptionRowView(option: .username, value: "lewis.hamilton")
}
