//
//
// Featuredview.swift
// SuperMind
//
// Created by Aryan on 27/02/25
//
        

import SwiftUI

struct FeaturedView: View {
    let featuredItems: [Meditation]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Featured")
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal) {
                LazyHStack(spacing: 20) {
                    ForEach(featuredItems.indices, id: \.self) { index in
                        FeaturedCard(meditation: featuredItems[index])
                            .padding(1)
                            .scrollTransition { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0.85)
                                    .opacity(phase.isIdentity ? 1 : 0.7)
                            }
                            .containerRelativeFrame(.horizontal)
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
            .contentMargins(.horizontal, 20, for: .scrollContent)
        }
    }
}

struct FeaturedCard: View {
    let meditation: Meditation
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(meditation.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
            LinearGradient(colors: [.gradient1, .gradient1.opacity(0)], startPoint: .bottom, endPoint: .top)
                .frame(height: 120)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(meditation.subtitle)
                    .font(.caption)
                    .foregroundColor(.blue)
                Text(meditation.title)
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Text(meditation.author)
                    .font(.title3)
                    .foregroundColor(.white)
                Text("Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being.")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .lineLimit(2)
                HStack {
                    Text(meditation.duration)
                        .foregroundColor(.white)
                        .frame(width: 111, height: 34)
                        .background(.gray.opacity(0.2))
                        .cornerRadius(26)
                    Spacer()
                    Button {
                        
                    }label: {
                        Image(systemName: "play.fill")
                            .foregroundColor(.black)
                            .padding()
                            .background(Circle().fill(.white))
                    }
                }
            }
            .padding()
        }
        .cornerRadius(20)
        .background(RoundedRectangle(cornerRadius: 20).stroke(.white.opacity(0.2), lineWidth: 1.5))
    }
}
