//
//  PostGridView.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 18/06/25.
//

import SwiftUI

struct PostGridView: View {
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible()),
    ]

    private let width = (UIScreen.main.bounds.width / 3) - 2

    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach(0..<15) { post in
                Rectangle()
                    .frame(width: width, height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}
