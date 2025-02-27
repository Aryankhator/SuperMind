//
//
// ExploreScreenModel.swift
// SuperMind
//
// Created by Nand on 27/02/25
//
        

import Foundation

struct Meditation: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let imageName: String
    let author: String
    let duration: String
}

struct CategoryItem: Identifiable {
    let id = UUID()
    let title: String
    let icon: String 
}
