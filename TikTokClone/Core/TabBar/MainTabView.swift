//
//  MainTabView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/16/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Label("Home", systemImage: "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .tag(0) 

            ExploreView()
                .tabItem {
                    Label("Friends", systemImage: "person.2")
                        .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                }
                .tag(1)

            Text("Upload")
                .tabItem {
                    Label("", systemImage: "plus")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                }
                .tag(2)

            NotificationsView()
                .tabItem {
                    Label("Notifications", systemImage: "heart")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                }
                .tag(3)

            CurrentUserProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                        .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                }
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
