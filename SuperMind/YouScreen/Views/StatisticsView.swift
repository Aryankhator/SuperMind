//
//
// StatisticsView.swift
// SuperMind
//
// Created by Aryan on 28/02/25
//
        

import SwiftUI

struct StatisticsView: View {
    let stats: [StatItem]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("My statistics:")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(stats, id: \.id) { stat in
                        StatCardView(stat: stat)
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.top)
    }
    
    @ViewBuilder
    func StatCardView(stat: StatItem)-> some View {
        VStack {
            Text(stat.title)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(stat.color)
            Image(stat.image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
            Rectangle()
                .frame(width: 120, height: 1)
                .foregroundStyle(.gray)
            HStack {
                VStack(spacing: 8) {
                    Text(stat.value1)
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(stat.color)
                    Text(stat.unit1)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .regular))
                }
                VStack(spacing: 8) {
                    Text(stat.value2)
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(stat.color)
                    Text(stat.unit2)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .regular))
                }
            }
        }
        .frame(width: 128, height: 200)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(16)
        .background(RoundedRectangle(cornerRadius: 16).stroke(.gray, lineWidth: 1))
        .padding(1)
    }
}

//#Preview {
//    StatisticsView()
//}
