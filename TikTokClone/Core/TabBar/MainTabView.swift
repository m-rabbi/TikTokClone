//
//  MainTabView.swift
//  TikTokClone
//
//  Created by Md Rabbi on 7/16/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                Text("Feed View")
            }

            Tab("Friends", systemImage: "person.2") {
                Text("Search View")
            }

            Tab("", systemImage: "plus") {
                Text("Upload View")
            }

            Tab("Notifications", systemImage: "heart") {
                Text("Notifications View")
            }

            Tab("Profile", systemImage: "person") {
                Text("Profile View")
            }
        }
    }
}

#Preview {
    MainTabView()
}
