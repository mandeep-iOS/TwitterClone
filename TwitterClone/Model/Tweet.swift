//
//  Tweet.swift
//  TwitterClone
//
//  Created by Deep Baath on 18/02/23.
//

import Foundation

struct Tweet: Identifiable {
    var id: Int
    var text: String
    var image: String?
    var video: String?
    var user: User
    var liked: Bool = false
}

struct User {
    var name: String
    var handle: String
    var profilePic: String
}
