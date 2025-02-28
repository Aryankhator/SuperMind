//
//
// YouScreenModel.swift
// SuperMind
//
// Created by Aryan on 27/02/25
//
        

import Foundation
import SwiftUI

struct StatItem: Identifiable {
    let id =   UUID()
    let title: String
    let image: String
    let color: Color
    let value1: String
    let unit1: String
    let value2: String
    let unit2: String
}
