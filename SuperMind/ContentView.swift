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
        UITabBar.appearance().unselectedItemTintColor = .gray
        UITabBar.appearance().backgroundColor = .primary1
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
        .accentColor(.white)
    }
}


#Preview {
    ContentView()
}
