//
//
// YouViewModel.swift
// SuperMind
//
// Created by Aryan on 27/02/25
//
        

import SwiftUI

//class YouViewModel: ObservableObject {
//    @Published var recent: [Meditation] = []
//    @Published var isMyLibrarySelected = true
//    @Published var stats: [StatItem] = []
//        
//    init() {
//        fetchDummyData()
//    }
//    
//    func fetchDummyData() {
//        recent = [
//            Meditation(title: "Freedom Series", subtitle: "Meditation - 10 Mins", imageName: "sampleImage1", author: "Akhil Aryan", duration: "10 Mins"),
//            Meditation(title: "Freedom Series", subtitle: "Meditation Series", imageName: "sampleImage2", author: "Akhil Aryan", duration: "5 Mins"),
//            Meditation(title: "Freedom Series", subtitle: "Meditation - 10 Mins", imageName: "sampleImage1", author: "Akhil Aryan", duration: "10 Mins"),
//            Meditation(title: "Freedom Series", subtitle: "Meditation Series", imageName: "sampleImage2", author: "Akhil Aryan", duration: "5 Mins")
//        ]
//        stats = [
//            StatItem(title: "Meditation", image: "meditation", color: .green, value1: "200", unit1: "Sessions", value2: "700", unit2: "XP"),
//            StatItem(title: "Workout", image: "workout", color: .yellow, value1: "200", unit1: "Minutes", value2: "700", unit2: "XP"),
//            StatItem(title: "Journal", image: "journal", color: .pink, value1: "200", unit1: "Entries", value2: "700", unit2: "XP"),
//            StatItem(title: "Meditation", image: "meditation", color: .green, value1: "200", unit1: "Sessions", value2: "700", unit2: "XP"),
//            StatItem(title: "Workout", image: "workout", color: .yellow, value1: "200", unit1: "Minutes", value2: "700", unit2: "XP"),
//            StatItem(title: "Journal", image: "journal", color: .pink, value1: "200", unit1: "Entries", value2: "700", unit2: "XP")
//        ]
//    }
//}
//
import SwiftUI

class YouViewModel: ObservableObject {
    @Published var recent: [Meditation] = []
    @Published var isMyLibrarySelected = true
    @Published var stats: [StatItem] = []
    @Published var chartData: [(day: String, value: Int)] = []
    @Published var weeklyComparisonData: [(label: String, value: Int)] = []
    @Published var averageValue: Int = 5
    
    init() {
        fetchDummyData()
    }
    
    func fetchDummyData() {
        recent = [
            Meditation(title: "Freedom Series", subtitle: "Meditation - 10 Mins", imageName: "sampleImage1", author: "Akhil Aryan", duration: "10 Mins"),
            Meditation(title: "Freedom Series", subtitle: "Meditation Series", imageName: "sampleImage2", author: "Akhil Aryan", duration: "5 Mins"),
            Meditation(title: "Freedom Series", subtitle: "Meditation - 10 Mins", imageName: "sampleImage1", author: "Akhil Aryan", duration: "10 Mins"),
            Meditation(title: "Freedom Series", subtitle: "Meditation Series", imageName: "sampleImage2", author: "Akhil Aryan", duration: "5 Mins")
        ]
        stats = [
            StatItem(title: "Meditation", image: "meditation", color: .green, value1: "200", unit1: "Sessions", value2: "700", unit2: "XP"),
            StatItem(title: "Workout", image: "workout", color: .yellow, value1: "200", unit1: "Minutes", value2: "700", unit2: "XP"),
            StatItem(title: "Journal", image: "journal", color: .pink, value1: "200", unit1: "Entries", value2: "700", unit2: "XP"),
            StatItem(title: "Meditation", image: "meditation", color: .green, value1: "200", unit1: "Sessions", value2: "700", unit2: "XP"),
            StatItem(title: "Workout", image: "workout", color: .yellow, value1: "200", unit1: "Minutes", value2: "700", unit2: "XP"),
            StatItem(title: "Journal", image: "journal", color: .pink, value1: "200", unit1: "Entries", value2: "700", unit2: "XP")
        ]
        chartData = [
            ("M", 8),
            ("T", 3),
            ("W", 6),
            ("T.", 1),
            ("F", 2),
            ("S", 5),
            ("Su", 9)
        ]
        weeklyComparisonData = [
            (label: "Last Week", value: 325),
            (label: "This Week", value: 415)
        ]
    }
}
