//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/17/25.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    let videoUrls = [
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
        ]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = [
            .init(id: UUID().uuidString, videoUrl: videoUrls[0]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[1]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[2]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[3]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[4]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[5]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[6]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[7]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[8]),

        ]
    }
}
