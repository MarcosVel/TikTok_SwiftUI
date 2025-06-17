//
//  MainTabView.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 17/06/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                            .environment(
                                \.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                            .environment(
                                \.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            Text("Upload")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                    }
                }
                .onAppear { selectedTab = 4 }
                .tag(4)
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: "text.bubble")
                            .environment(
                                \.symbolVariants, selectedTab == 2 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                            .environment(
                                \.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
