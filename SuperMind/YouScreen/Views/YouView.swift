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
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 0) {
                ProfileSectionView()
                StreakLeagueSectionView()
                ToggleSectionView()
                if viewModel.isMyLibrarySelected {
                    
                    MyLibraryView(recent:  viewModel.recent)
                } else {
                    InsightsView(viewModel: viewModel)
                }
                FooterSectionView()
            }
        }
        .background(Color.primary1)
    }
    
    @ViewBuilder
    func ProfileSectionView()-> some View {
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
    }
    
    @ViewBuilder
    func StreakLeagueSectionView()-> some View {
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
                Image(.star)
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
    }
    
    @ViewBuilder
    func ToggleSectionView()-> some View {
        HStack(spacing: 0) {
            Button {
                viewModel.isMyLibrarySelected = true
            } label: {
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
            } label: {
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
    }
}

#Preview {
    YouView()
}
