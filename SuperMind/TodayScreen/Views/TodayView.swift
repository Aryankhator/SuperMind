//
//
// ExploreView.swift
// SuperMind
//
// Created by Aryan on 27/02/25
//


import SwiftUI


struct TodayView: View {
    @StateObject private var viewModel = TodayViewModel()
    
    var body: some View {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 20) {
                    ZStack(alignment: .bottom) {
                        Image(.header)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity)
                        LinearGradient(colors: [.gradient1, .gradient1.opacity(0)], startPoint: .bottom, endPoint: .top)
                            .frame(height: 111)
                        Header()
                            .frame(maxHeight: .infinity, alignment: .top)
                            .padding(.top, 60)
                    }
                    if let getStarted = viewModel.getStarted {
                        GetStartedView(meditation: getStarted)
                    }
                    ExploreGridView(isExpanded: $viewModel.isExpanded, fullItems: viewModel.fullItems)
                    SectionView(title: "Recommended For You", items: viewModel.recommendedList)
                    SectionView(title: "Recents", items: viewModel.recent, showSeeALL: true)
                    if let featured = viewModel.featuredList {
                        FeaturedView(featuredItems: featured)
                    }
                    learnCard()
                    FooterSectionView()
                }
                .padding(.bottom, 70)
            }
        .ignoresSafeArea()
        .background(.primary1)
    }
    
    @ViewBuilder
    func learnCard() -> some View {
        VStack(spacing: 20) {
            Text("Learn")
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(spacing: 15){
                Image(.sampleImage1)
                    .resizable()
                    .frame(width: 111, height: 73)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text("How to meditate like a monk")
                        .font(.title3)
                        .foregroundColor(.white)
                    Text("Read More")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image("share")
                    .padding(10)
                    .background(Circle().fill(.primary1))
            }
            .padding(12)
            .frame(maxWidth: .infinity)
            .background(.purple3)
            .cornerRadius(10)
        }
        .padding()
    }
    
    @ViewBuilder
    func GetStartedView(meditation: Meditation)-> some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Get Started")
                .font(.headline)
                .bold()
                .foregroundColor(.white)
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(meditation.subtitle)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.purple2)
                    Text(meditation.title)
                        .font(.system(size: 24))
                        .bold()
                        .foregroundColor(.white)
                    Label("9", image: .optionIcon)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.white)
                    Text(meditation.author)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                Spacer()
                Image(meditation.imageName)
                    .resizable()
                    .frame(width: 160, height: 120)
                    .cornerRadius(15)
            }
            .padding()
            .background(.purple1)
            .cornerRadius(20)
            .background(RoundedRectangle(cornerRadius: 20).stroke(Color.purple2, lineWidth: 2))
        }
        .padding(.horizontal)
    }
}


#Preview {
    TodayView()
}



