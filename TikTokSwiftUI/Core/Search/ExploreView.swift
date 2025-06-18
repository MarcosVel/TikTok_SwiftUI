//
//  ExploreView.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 17/06/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0..<20) { user in
                        UserCell()
                            .padding(.horizontal)
                    }
                }
                .padding(.top, 16)
                .padding(.bottom, 24)
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ExploreView()
}
