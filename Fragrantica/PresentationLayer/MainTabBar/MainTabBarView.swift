//
//  MainTabBarView.swift
//  Fragrantica
//
//  Created by Gulliver Raed on 11/25/25.
//

import SwiftUI

enum ApplicationTab: Hashable {
    case home, search, news, profile
}

struct MainTabBarView: View {
    
    @State private var currentTab: ApplicationTab = .home
    
    var body: some View {
            TabView(selection: $currentTab) {
                Tab("Home", systemImage: "house", value: .home) {
                    HomeView()
                }
                
                Tab("Search", systemImage: "magnifyingglass", value: .search) {
                    SearchView()
                }
                
                Tab("News", systemImage: "newspaper", value: .news) {
                    NewsView()
                }
                
                Tab("Profile", systemImage: "person", value: .profile) {
                    ProfileView()
                }
            }
            .tint(.appPrimaryAccent)
    }
}

#Preview {
    MainTabBarView()
}
