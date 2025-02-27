//
//
// ExploreViewModel.swift
// SuperMind
//
// Created by Nand on 27/02/25
//
        

import Foundation

class TodayViewModel: ObservableObject {
    @Published var recommendedList: [Meditation] = []
    @Published var recent: [Meditation] = []
    @Published var featuredList: [Meditation]?
    @Published var getStarted: Meditation?
    @Published var isExpanded: Bool = false
    
    init() {
        fetchDummyData()
    }
    
    func fetchDummyData() {
        recommendedList = [
            Meditation(title: "Freedom Series", subtitle: "Meditation - 10 Mins", imageName: "sampleImage1", author: "Akhil Aryan", duration: "10 Mins"),
            Meditation(title: "Freedom Series", subtitle: "Meditation Series", imageName: "sampleImage2", author: "Akhil Aryan", duration: "5 Mins"),
            Meditation(title: "Freedom Series", subtitle: "Meditation - 10 Mins", imageName: "sampleImage1", author: "Akhil Aryan", duration: "10 Mins"),
            Meditation(title: "Freedom Series", subtitle: "Meditation Series", imageName: "sampleImage2", author: "Akhil Aryan", duration: "5 Mins")
        ]
        
        recent = recommendedList
        
        featuredList = [Meditation(title: "Change your thought patterns", subtitle: "Meditation Series", imageName: "feature1", author: "Ranveer Allahbadia", duration: "10 Mins"), Meditation(title: "Change your thought patterns", subtitle: "Meditation Series", imageName: "feature1", author: "Ranveer Allahbadia", duration: "10 Mins"), Meditation(title: "Change your thought patterns", subtitle: "Meditation Series", imageName: "feature1", author: "Ranveer Allahbadia", duration: "10 Mins"), Meditation(title: "Change your thought patterns", subtitle: "Meditation Series", imageName: "feature1", author: "Ranveer Allahbadia", duration: "10 Mins"), Meditation(title: "Change your thought patterns", subtitle: "Meditation Series", imageName: "feature1", author: "Ranveer Allahbadia", duration: "10 Mins"), Meditation(title: "Change your thought patterns", subtitle: "Meditation Series", imageName: "feature1", author: "Ranveer Allahbadia", duration: "10 Mins")]
        
        getStarted = Meditation(title: "Manage your emotions", subtitle: "Meditation Series", imageName: "get_started", author: "Ranveer Allahbadia", duration: "9 Sessions")
    }
       
    let fullItems: [CategoryItem] = [
           CategoryItem(title: "Meditation", icon: "figure.mind.and.body"),
           CategoryItem(title: "Workout", icon: "figure.highintensity.intervaltraining"),
           CategoryItem(title: "Sleep", icon: "moon"),
           CategoryItem(title: "Mantra", icon: "leaf"),
           CategoryItem(title: "Events", icon: "calendar"),
           CategoryItem(title: "Courses", icon: "book"),
           CategoryItem(title: "Community", icon: "person.3"),
           CategoryItem(title: "Timer", icon: "timer"),
           CategoryItem(title: "Affirmation", icon: "quote.bubble"),
           CategoryItem(title: "Music", icon: "music.note"),
           CategoryItem(title: "Journal", icon: "book.closed")
       ]
}
