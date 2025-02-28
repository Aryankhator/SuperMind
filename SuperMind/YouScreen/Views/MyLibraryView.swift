//
//
// MyLibraryView.swift
// SuperMind
//
// Created by Aryan on 28/02/25
//
        

import SwiftUI

struct MyLibraryView: View {
    let recent: [Meditation]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            SectionView(title: "Recents", items: recent, showSeeALL: true)
                .padding(.vertical)
            libraryRow(icon: "heart", title: "My Favorites")
            libraryRow(icon: "arrow.down.to.line.alt", title: "Downloads")
            libraryRow(icon: "text.badge.plus", title: "My Playlists")
            libraryRow(icon: "book", title: "My Journal Entries")
        }
    }
    
    @ViewBuilder
    private func libraryRow(icon: String, title: String) -> some View {
        HStack(spacing: 10) {
            Image(systemName: icon)
                .foregroundColor(.white)
                .font(.title2)
            
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .regular))
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.white)
        }
        .padding(.vertical, 8)
        .padding(.horizontal)
    }
}
import SwiftUI


//#Preview {
//    MyLibraryView()
//}
