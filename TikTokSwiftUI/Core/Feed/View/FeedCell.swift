//
//  FeedCell.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 17/06/25.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post

    let fallbackUrl = URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
    
    var body: some View {
        ZStack {
            VideoPlayer(player: AVPlayer(url: URL(string: post.videoUrl) ?? fallbackUrl))
                .containerRelativeFrame([.horizontal, .vertical])

            VStack {
                Spacer()

                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("carlos.sainz")
                            .fontWeight(.semibold)

                        Text("1h")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.white)

                    Spacer()

                    VStack(spacing: 28) {
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)

                        Button {

                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 32, height: 28)
                                    .foregroundStyle(.white)
                                Text("12")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }

                        Button {

                        } label: {
                            VStack{
                                Image(systemName: "ellipses.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("12")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }

                        Button {

                        } label: {
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 22, height: 28)
                                    .foregroundStyle(.white)
                                Text("12")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }

                        Button {

                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                        }
                    }
                }
                .padding(.bottom, 88)
            }
            .padding()
        }
    }
}

#Preview {
    FeedCell(post: Post(id: UUID().uuidString, videoUrl: ""))
}
