//
//  MediaSelectorView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/19/25.
//

import SwiftUI
import PhotosUI

struct MediaSelectorView: View {
    @State private var player = AVPlayer()
    @State private var showMediaPicker: Bool = false
    @State private var selectedItem: PhotosPickerItem?
    @State private var mediaPreview: Movie?
    
    var body: some View {
        NavigationStack {
            VStack {
                if let mediaPreview {
                    CustomVideoPlayer(player: player)
                        .onAppear { player.replaceCurrentItem(with: .init(url: mediaPreview.url))
                            player.play()
                        }
                        .padding()
                }
            }
            .task(id: selectedItem) {
                await loadMediaPreview(fromItem: selectedItem)
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

private extension MediaSelectorView {
    func loadMediaPreview(fromItem item: PhotosPickerItem?) async {
        guard let item else { return }
        
        self.mediaPreview =  try? await item.loadTransferable(type: Movie.self)
        
    }
}

#Preview {
    MediaSelectorView()
}
