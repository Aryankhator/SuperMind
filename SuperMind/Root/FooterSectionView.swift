//
//
// FooterSectionView.swift
// SuperMind
//
// Created by Aryan on 28/02/25
//
        

import SwiftUI

struct FooterSectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Made Mindfully in 🇮🇳")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.footer)
            Text("Clear Mind\nBetter Performance")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.footer)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(EdgeInsets(top: 72, leading: 16, bottom: 16, trailing: 36))
    }
}

#Preview {
    FooterSectionView()
}
