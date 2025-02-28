//
//
// ExploreGridView.swift
// SuperMind
//
// Created by Aryan on 27/02/25
//
        

import SwiftUI

struct ExploreGridView: View {
    @Binding var isExpanded: Bool
    let fullItems: [CategoryItem]
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var displayedItems: [CategoryItem] {
        var items = Array(fullItems.prefix(3))
        let toggleItem = isExpanded ? CategoryItem(title: "Close", icon: "chevron.up") : CategoryItem(title: "More", icon: "chevron.down")
        items.append(toggleItem)
        var fullItems = self.fullItems
        fullItems.insert(toggleItem, at: 3)
        return isExpanded ? fullItems : items
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Explore")
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(displayedItems) { item in
                    Button(action: {
                        if item.title == "More" {
                            withAnimation {
                                isExpanded = true
                            }
                        } else if item.title == "Close" {
                            withAnimation {
                                isExpanded = false
                            }
                        }
                    }) {
                        VStack(spacing: 8) {
                            Image(systemName: item.icon)
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                            Text(item.title)
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        .frame(width: 80, height: 80)
                        .background(.purple1)
                        .cornerRadius(12)
                    }
                }
            }
        }
        .padding()
        .animation(.spring(), value: isExpanded)
    }
}

//#Preview {
//    ExploreGridView()
//}
