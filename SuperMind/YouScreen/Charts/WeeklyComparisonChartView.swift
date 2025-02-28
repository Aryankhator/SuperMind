//
//
// WeeklyComparisonChartView.swift
// SuperMind
//
// Created by Aryan on 28/02/25
//
        

import SwiftUI
import Charts

struct WeeklyComparisonChartView: View {
    let data: [(label: String, value: Int)]

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Weekly comparison")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
                .padding(.bottom, 10)
            Text("This week, your average number of activities dropped 30% from last week. To boost your consistency, commit to streaks after an activity.")
                .font(.system(size: 14, weight: .light))
                .foregroundColor(.white)
                .padding(.bottom, 20)
            Chart {
                ForEach(data, id: \.label) { item in
                    BarMark(
                        x: .value("Label", item.label),
                        y: .value("Value", item.value),
                        width: 60
                    )
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.gradient7, .chartPurple]),startPoint: .top, endPoint: .bottom))
                    .cornerRadius(6)
                
                    .annotation(position: .overlay) {
                        VStack(spacing: 2) {
                            Text("\(item.value)")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.black)
                            Text("XP")
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(.black.opacity(0.8))
                        }
                    }
                }
                ForEach(0..<5, id: \.self) { index in
                    RuleMark(y: .value("Grid", Double(index) * 100.0))
                        .foregroundStyle(Color.white.opacity(0.2))
                        .lineStyle(StrokeStyle(lineWidth: 1, dash: [3]))
                }
            }
            .frame(height: 180)
            .chartYAxis(.hidden)
            .chartXAxis {
                AxisMarks { _ in
                    AxisValueLabel()
                        .foregroundStyle(Color.white)
                }
            }
        }
        .padding(EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 40))
        .background(RoundedRectangle(cornerRadius: 20).fill(.chartBackground))
        .padding()
    }
}



#Preview {
    WeeklyComparisonChartView(data: [(label: "A", value: 10)])
}
