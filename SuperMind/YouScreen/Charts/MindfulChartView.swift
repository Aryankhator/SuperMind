//
//
// MindfulChartView.swift
// SuperMind
//
// Created by Aryan on 28/02/25
//
        

import SwiftUI
import Charts

struct MindfulChartView: View {
    let data: [(day: String, value: Int)]
    let averageValue: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Mindful days this week")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
                .padding(.bottom, 25)

            Text("This week, you were mindful for 5 days! To prevent breaking your streak, try using streak freeze!")
                .font(.system(size: 14, weight: .light))
                .foregroundColor(.white)
                .padding(.bottom, 28)
            Chart {
                ForEach(data, id: \.day) { item in
                    BarMark(
                        x: .value("Day", item.day),
                        y: .value("Activities", item.value),
                        width: 15
                    )
                    .foregroundStyle(item.value > averageValue ? LinearGradient(gradient: Gradient(colors: [.chartPurple, .white]),startPoint: .top, endPoint: .bottom) : LinearGradient(gradient: Gradient(colors: [.footer, .footer]),startPoint: .top, endPoint: .bottom))
                    .cornerRadius(6)
                }

                RuleMark(y: .value("", averageValue))
                    .lineStyle(StrokeStyle(lineWidth: 2, dash: [5]))
                    .foregroundStyle(.white)
                ForEach(0..<6, id: \.self) { index in
                    RuleMark(y: .value("Grid", Double(index) * 2.0))
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

            HStack {
                Circle()
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.chartPurple, .white]),startPoint: .top, endPoint: .bottom))
                    .frame(width: 16, height: 16)
                Text("Activities Completed")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.white)
                Spacer()
                Text("---  Apps User’s Average")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.white)
            }
            .padding(.top, 40)
        }
        .padding(EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 40))
        .background(RoundedRectangle(cornerRadius: 20).fill(.chartBackground))
        .padding()
    }
}


#Preview {
    MindfulChartView(data: [(day: "A", value: 8)], averageValue: 3)
}
