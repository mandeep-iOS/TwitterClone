//
//  TweetView.swift
//  TwitterClone
//
//  Created by Deep Baath on 18/02/23.
//

import SwiftUI
import AVKit

struct TweetView: View {
    var tweet: Tweet
    @State private var isShareSheetPresented = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(uiImage: UIImage(named: tweet.user.profilePic)!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                    .padding(.trailing, 8)
                VStack(alignment: .leading, spacing: 4) {
                    Text(tweet.user.name)
                        .fontWeight(.bold)
                    Text(tweet.user.handle)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            
            Text(tweet.text)
                .lineLimit(nil)
                .padding(.vertical, 4)
            
            if let imageName = tweet.image {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .padding(.vertical, 4)
            }
            
           
            if let videoUrlString = tweet.video, let videoUrl = URL(string: videoUrlString) {
                VideoPlayer(player: AVPlayer(url: videoUrl))
                    .frame(height: 200)
                    .padding(.vertical, 4)
            }
            
            Divider()
            
            HStack {
                NavigationLink(destination: TweetDetailView(tweet: tweet)) {
                    Image(systemName: "message")
                        .foregroundColor(.blue)
                    Text("Reply")
                        .foregroundColor(.blue)
                }
             
                Button(action: {
                  
                }) {
                    Image(systemName: "arrowshape.turn.up.left")
                }
                .padding(.trailing, 16)
                Button(action: {
                    
                }) {
                    Image(systemName: "arrow.2.squarepath")
                }
                .padding(.trailing, 16)
                Button(action: {
                }) {
                    Image(systemName: "heart")
                }
                .padding(.trailing, 16)
                Button(action: {
                    isShareSheetPresented.toggle()
                }) {
                    Image(systemName: "square.and.arrow.up")
                }
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .sheet(isPresented: $isShareSheetPresented) {
                    ShareSheet(activityItems: [tweet.text])
                }
    }
}


struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView(tweet: Tweet(id: 62, text: "This is my first testing purpose tweet on SwiftUI base Twitter Clone.", user: User(name: "Mandeep Singh", handle: "iOS Developer", profilePic: "profile.fill")))
    }
}

