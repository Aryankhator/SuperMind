//
//
// YouViewModel.swift
// SuperMind
//
// Created by Aryan on 27/02/25
//
        

import SwiftUI

class YouViewModel: ObservableObject {
    @Published var recent: [Meditation] = []
    @Published var isMyLibrarySelected = true

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
    }
}

