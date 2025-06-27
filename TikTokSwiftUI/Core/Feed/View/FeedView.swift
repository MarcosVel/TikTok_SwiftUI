//
//  FeedView.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 17/06/25.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
