//
//  FeedViewModel.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 27/06/25.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()

    let videoUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
    ]

    init() {
        fetchPosts()
    }

    func fetchPosts() {
        self.posts = videoUrls.map {
            Post(id: UUID().uuidString, videoUrl: $0)
        }

        //        self.posts = [
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[0]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[1]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[2]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[3]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[4]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[5]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[6]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[7]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[8]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[9]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[10]),
        //            .init(id: UUID().uuidString, videoUrl: videoUrls[11]),
        //            //            .init(id: UUID().uuidString, videoUrl: videoUrls[12])
        //        ]
    }
}
