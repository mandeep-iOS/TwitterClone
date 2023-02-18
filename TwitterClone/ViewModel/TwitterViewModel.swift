//
//  TwitterViewModel.swift
//  TwitterClone
//
//  Created by Deep Baath on 18/02/23.
//

import Foundation
import SwiftUI

// Step 5: Create a view model for the Twitter home page
class TwitterViewModel: ObservableObject {
    @Published var tweets = [
        Tweet(id: 62, text: "This is my first testing purpose tweet on SwiftUI base Twitter Clone.", user: User(name: "Mandeep Singh Baath", handle: "@mdeep62", profilePic: "profile")),
        Tweet(id: 4, text: "Just ate a pizza 🍕😋", image: "restBG", video: nil, user: User(name: "Maze Ty", handle: "@maze12", profilePic: "woman")),
        Tweet(id: 2, text: "Check out my new video", image: nil, video: "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4", user: User(name: "Jane Smith", handle: "@janesmith", profilePic: "plumber"))
    ]
    
    func addTweet(tweet: Tweet) {
        tweets.append(tweet)
    }
    
    func deleteTweet(id: Int) {
        tweets.removeAll(where: { $0.id == id })
    }
}


