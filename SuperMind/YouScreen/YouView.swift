//
//
// YouView.swift
// SuperMind
//
// Created by Aryan on 27/02/25
//


import SwiftUI

struct YouView: View {
    @StateObject private var viewModel: YouViewModel = .init()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                HStack(spacing: 20) {
                    Circle()
                        .fill(.green)
                        .frame(width: 70, height: 70)
                        .overlay {
                            ZStack {
                                Text("S")
                                    .font(.system(size: 27, weight: .medium))
                                Image(systemName: "pencil")
                                    .foregroundStyle(.purple2)
                                    .padding(8)
                                    .background(Circle().fill(.purple1))
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                    .offset(x: 6, y: 6)
                            }
                        }
                    VStack(alignment: .leading ) {
                        Text("SOURAV")
                            .foregroundStyle(.white)
                        Text("Level Premium User >")
                            .foregroundStyle(.yellow1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Image(systemName: "gearshape")
                        .foregroundStyle(.white)
                        .font(.title2)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                HStack(spacing: 20) {
                    HStack(spacing: 14) {
                        Image(.baby)
                        VStack(alignment: .leading) {
                            Text("8")
                                .foregroundStyle(.white)
                            Text("Day Streak")
                                .foregroundStyle(.white)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 62)
                    .background(RoundedRectangle(cornerRadius: 15).stroke(.white.opacity(0.2), lineWidth: 1))
                    HStack(spacing: 14) {
                        Image(.baby)
                        VStack(alignment: .leading) {
                            Text("#4")
                                .foregroundStyle(.white)
                            Text("Gold league")
                                .foregroundStyle(.white)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 62)
                    .background(RoundedRectangle(cornerRadius: 15).stroke(.white.opacity(0.2), lineWidth: 1))
                }
                .padding(.top, 20)
                .padding(.horizontal)
                HStack(spacing: 0) {
                    Button {
                        viewModel.isMyLibrarySelected = true
                    }label: {
                        VStack {
                            Text("My Library")
                            Rectangle()
                                .frame(maxWidth: .infinity)
                                .frame(height: 2)
                        }
                        .foregroundStyle(viewModel.isMyLibrarySelected ? .white : .gray)
                    }
                    Button {
                        viewModel.isMyLibrarySelected = false
                    }label: {
                        VStack {
                            Text("Insights")
                            Rectangle()
                                .frame(maxWidth: .infinity)
                                .frame(height: 2)
                        }
                        .foregroundStyle(viewModel.isMyLibrarySelected ? .gray : .white)
                    }
                }
                .frame(height: 40)
                .padding(.top, 32)
                if viewModel.isMyLibrarySelected {
                    SectionView(title: "Recents", items: viewModel.recent, showSeeALL: true)
                        .padding(.top, 27)
                    MyLibraryView()
                        .padding(.top, 40)
                }else {
                    
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Made Mindfully in 🇮🇳")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.footer)
                    Text("Clear Mind\nBetter Performance")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.footer)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 72, leading: 16, bottom: 16, trailing: 36))
            }
        }
        .background(Color.primary1)
    }
    
}

#Preview {
    YouView()
}


struct MyLibraryView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            libraryRow(icon: "heart", title: "My Favorites")
            libraryRow(icon: "arrow.down.to.line.alt", title: "Downloads")
            libraryRow(icon: "text.badge.plus", title: "My Playlists")
            libraryRow(icon: "book", title: "My Journal Entries")
        }
        .padding(.horizontal)
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
    }
}

