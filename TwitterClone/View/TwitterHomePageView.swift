//
//  TwitterHomePageView.swift
//  TwitterClone
//
//  Created by Deep Baath on 18/02/23.
//

import SwiftUI


struct TwitterHomePageView: View {
    @StateObject var viewModel = TwitterViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 13) {
                    ForEach(viewModel.tweets) { tweet in
                        TweetView(tweet: tweet)
                            .padding(.vertical, 8)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 7)
                    }
                }
                .padding(.horizontal, 10)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor(backgroundColor: .clear, tintColor: .systemBlue)
        }
    }
}

struct TwitterHomePageView_Previews: PreviewProvider {
    static var previews: some View {
        TwitterHomePageView()
    }
}
