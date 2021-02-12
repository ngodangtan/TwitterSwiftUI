//
//  MainTabView.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 12/02/2021.
//

import SwiftUI
struct MainTabView: View {
    @Binding var selectedIndex: Int
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onTapGesture {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .onTapGesture {
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
//            NotificationsView()
//                .onTapGesture {
//                    selectedIndex = 2
//                }
//                .tabItem {
//                    Image(systemName: "heart")
//                }.tag(2)
            
            ConversationView()
                .onTapGesture {
                    selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "envelope")
                }.tag(3)
        }
    }
}
