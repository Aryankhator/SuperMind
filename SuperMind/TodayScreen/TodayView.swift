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
        VStack {
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
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Made Mindfully in 🇮🇳")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.footer)
                        Text("Clear Mind\nBetter Performance")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.footer)
                    }
                    .padding()
                }
                .padding(.bottom, 70)
            }
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
}

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

struct GetStartedView: View {
    let meditation: Meditation
    
    var body: some View {
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

struct SectionView: View {
    let title: String
    let items: [Meditation]
    var showSeeALL: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(title)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                if showSeeALL {
                    Button {
                        
                    }label: {
                        Text("See All")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundStyle(.gray)
                    }
                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { meditation in
                        MeditationCard(meditation: meditation)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct MeditationCard: View {
    let meditation: Meditation
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(meditation.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 160)
                .cornerRadius(10)
            Text(meditation.subtitle).font(.caption).foregroundColor(.gray)
            Text(meditation.title).font(.headline).foregroundColor(.white)
            Text(meditation.author).font(.subheadline).foregroundColor(.gray)
        }
        .frame(width: 150)
    }
}


#Preview {
    TodayView()
}



