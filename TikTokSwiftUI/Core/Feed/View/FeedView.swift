//
//  FeedView.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 17/06/25.
//

import AVKit
import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                }
            }
            .scrollTargetLayout()
        }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { oldValue, newValue in
            print("DEBUG: Scroll position is \(newValue)")
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
        .onAppear {
            player.play()
        }
    }

    func playVideoOnChangeOfScrollPosition(postId: String?) {
        guard
            let currentPost = viewModel.posts.first(where: { $0.id == postId })
        else {
            return
        }

        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
