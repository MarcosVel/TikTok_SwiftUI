//
//  UserStatView.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 18/06/25.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String

    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            Text("\(title)")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatView(value: 5, title: "Followers")
}
