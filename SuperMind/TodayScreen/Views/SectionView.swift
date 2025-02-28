//
//
// SectionView.swift
// SuperMind
//
// Created by Aryan on 28/02/25
//
        

import SwiftUI

struct SectionView: View {
    let title: String
    let items: [Meditation]
    var showSeeALL: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(title)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                if showSeeALL {
                    Button {
                        
                    }label: {
                        Text("See All")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundStyle(.gray)
                    }
                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { meditation in
                        MeditationCard(meditation: meditation)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
    
    @ViewBuilder
    func MeditationCard(meditation: Meditation)-> some View {
        VStack(alignment: .leading) {
            Image(meditation.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 160)
                .cornerRadius(10)
            Text(meditation.subtitle).font(.caption).foregroundColor(.gray)
            Text(meditation.title).font(.headline).foregroundColor(.white)
            Text(meditation.author).font(.subheadline).foregroundColor(.gray)
        }
        .frame(width: 150)
    }
}
#Preview {
    SectionView(title: "", items: [])
}
