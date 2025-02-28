//
//
// InsightsView.swift
// SuperMind
//
// Created by Aryan on 28/02/25
//
        

import SwiftUI

struct InsightsView: View {
    @ObservedObject var viewModel: YouViewModel
    
    var body: some View {
        VStack {
            MindfulnessProgressView()
            MindfulChartView(data: viewModel.chartData, averageValue: viewModel.averageValue)
            WeeklyComparisonChartView(data: viewModel.weeklyComparisonData)
            StatisticsView(stats: viewModel.stats)
        }
    }
    
    @ViewBuilder
    func MindfulnessProgressView()-> some View {
            HStack {
                VStack {
                    Image(systemName: "triangle.fill")
                    Image(systemName: "triangle.fill")
                }
                .foregroundStyle(LinearGradient(colors: [.gradeint6, .white], startPoint: .top, endPoint: .bottom))
                Text("30%")
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundStyle(.gradeint6)
                Rectangle()
                    .frame(maxHeight: .infinity)
                    .frame(width: 2)
                    .foregroundStyle(.gradeint6)
                    .padding(12)
                Text("Your mindfulness practice\nincreased by 30% this week")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: 84)
            .padding(.horizontal, 12)
            .background(LinearGradient(colors: [.gradient4, .gradient5], startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20)
            .padding(EdgeInsets(top: 40, leading: 16, bottom: 16, trailing: 0))
    }
}
