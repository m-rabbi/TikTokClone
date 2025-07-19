//
//  MediaSelectorView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/19/25.
//

import SwiftUI
import PhotosUI

struct MediaSelectorView: View {
    @State private var showMediaPicker: Bool = false
    @State private var selectedItem: PhotosPickerItem?
    
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("New Post")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear { showMediaPicker.toggle() }
            .photosPicker(isPresented: $showMediaPicker, selection: $selectedItem, matching: .videos)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Next") {
                        print("DEBUG: go to next screen to upload post")
                    }
                }
            }
        }
    }
}

#Preview {
    MediaSelectorView()
}
