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
                UserStatView(value: 5, title: "Following")

                UserStatView(value: 10, title: "Followers")

                UserStatView(value: 80, title: "Likes")
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}
