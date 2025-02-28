//
//
// Header.swift
// SuperMind
//
// Created by Aryan on 28/02/25
//
        

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            HStack(spacing: 8) {
                Text("2")
                    .font(.subheadline)
                    .foregroundColor(.white)
                Image(.baby)
            }
            .frame(width: 64, height: 44)
            .background(.headerBackground)
            .cornerRadius(25)
            
            HStack(spacing: 8) {
                Text("Rank 5").font(.subheadline)
                    .foregroundColor(.white)
                Image(.star)
            }
            .frame(width: 103, height: 44)
            .background(.headerBackground)
            .cornerRadius(25)
            
            Spacer()
            Image(.gift)
                .frame(width: 44, height: 44)
                .background(.headerBackground)
                .cornerRadius(25)
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    Header()
}
