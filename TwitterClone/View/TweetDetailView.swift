//
//  TweetDetailView.swift
//  TwitterClone
//
//  Created by Deep Baath on 18/02/23.
//

import SwiftUI
import AVKit

struct TweetDetailView: View {
    let tweet: Tweet
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            HStack {
                Image(uiImage: UIImage(named: tweet.user.profilePic)!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(tweet.user.name)
                        .fontWeight(.bold)
                    Text(tweet.user.handle)
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
            
            Text(tweet.text)
                .font(.callout)
            
            if let imageName = tweet.image {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
            }
            
            if let videoUrlString = tweet.video, let videoUrl = URL(string: videoUrlString) {
                VideoPlayer(player: AVPlayer(url: videoUrl))
                    .frame(height: 200)
            }
            
            Divider()

        }
        .padding()
        .navigationBarTitle("Tweet Details", displayMode: .inline)
        .navigationBarColor(backgroundColor: .clear, tintColor: .systemBlue)
    
    }
}


struct TweetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TweetDetailView(tweet: Tweet(id: 62, text: "This is my first testing purpose tweet on SwiftUI base Twitter Clone.", user: User(name: "Mandeep Singh", handle: "iOS Developer", profilePic: "profile")))
    }
}
