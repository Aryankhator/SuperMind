//
//
// ContentView.swift
// SuperMind
//
// Created by Aryan on 27/02/25
//


import SwiftUI

import SwiftUI

enum Tab {
    case today, explore, you
}

struct ContentView: View {
    @State private var selectedTab: Tab = .today
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .primary1
        appearance.stackedLayoutAppearance.selected.iconColor = .white
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.stackedLayoutAppearance.normal.iconColor = UIColor.gray
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.gray]
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    var body: some View {
        TabView(selection: $selectedTab) {
            TodayView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Today")
                }
                .tag(Tab.today)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
                .tag(Tab.explore)
            
            YouView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("You")
                }
                .tag(Tab.you)
        }
        .tableStyle(.inset)
        .accentColor(.white)
    }
}


#Preview {
    ContentView()
}
