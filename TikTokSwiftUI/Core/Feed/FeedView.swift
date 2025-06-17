//
//  FeedView.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 17/06/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ..< 10) { post in
                    Rectangle()
                        .fill(.pink)
                        .containerRelativeFrame([.horizontal, .vertical])
                        .overlay {
                            Text("Post \(post)")
                                .foregroundStyle(.white)
                        }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
