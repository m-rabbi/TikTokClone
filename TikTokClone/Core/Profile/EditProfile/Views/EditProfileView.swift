//
//  EditProfileView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/19/25.
//

import SwiftUI

struct EditProfileView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Circle()
                        .frame(width: 64, height: 64)
                    
                    Button("Change photo") {
                        print("DEBUG: Change photo")
                    }
                    .foregroundStyle(.black)
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("About you")
                        .font(.footnote)
                        .foregroundStyle(Color(.systemGray2))
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("Name")
                        
                        Spacer()
                        
                        Text("Lewis Hamilton")
                    }
                    
                    HStack {
                        Text("Username ")
                        
                        Spacer()
                        
                        Text("lewis.hamilton")
                    }
                    
                    HStack {
                        Text("Bio")
                        
                        Spacer()
                        
                        Text("Add a bio")
                    }
                }
                .font(.subheadline)
                .padding()
                
                Spacer()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        print("DEBUG: Cancel")
                    }
                    .foregroundStyle(.black)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        print("DEBUG: Cancel")
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
