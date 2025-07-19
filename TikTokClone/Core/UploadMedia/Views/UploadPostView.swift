//
//  UploadPostView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/19/25.
//

import SwiftUI

struct UploadPostView: View {
    @State private var caption = ""
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                TextField("Enter your caption", text: $caption, axis: .vertical)
                
                Spacer()
                
                Image(.tiktokAppIcon)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 88, height: 100)
                    .clipShape(.rect(cornerRadius: 10))
            }
            
            Divider()
            
            Spacer()
            
            Button {
                print("DEBUG: Upload post")
            } label: {
                Text("Post")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(Color(.systemPink))
                    .clipShape(.rect(cornerRadius: 8))
            }

        }
        .padding()
    }
}

#Preview {
    UploadPostView()
}
