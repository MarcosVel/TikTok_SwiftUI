//
//  ProfileHeaderView.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 18/06/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))

                // username
                Text("@username")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }

            HStack(spacing: 16) {
                VStack {
                    Text("5")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text("Following")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .frame(width: 80, alignment: .center)

                VStack {
                    Text("5")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text("Followers")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .frame(width: 80, alignment: .center)

                VStack {
                    Text("5")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text("Likes")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .frame(width: 80, alignment: .center)
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}
