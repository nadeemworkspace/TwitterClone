//
//  Tweets.swift
//  TwitterClone
//
//  Created by Muhammed Nadeem on 28/07/24.
//

import Foundation

struct Tweets: Identifiable{
    var id: String = UUID().uuidString
    let name: String
    let userName: String
    let timeOfPosting: String
    let profileIcon: String
    let tweet: String
    let interaction: Interaction
    let verified: Bool
}

struct Interaction{
    let comments: Int
    let retweets: Int
    let likes: Int
}

extension Tweets{
    
    static func getTweets() -> [Tweets]{
        return [
            Tweets(
                name: "John Doe",
                userName: "@johndoe",
                timeOfPosting: "1h",
                profileIcon: "image1",
                tweet: "This is a sample tweet from John Doe.",
                interaction: Interaction(comments: 5, retweets: 10, likes: 50),
                verified: true
            ),
            Tweets(
                name: "Jane Smith",
                userName: "@janesmith",
                timeOfPosting: "2h",
                profileIcon: "profileImage",
                tweet: "Loving the new SwiftUI features!",
                interaction: Interaction(comments: 8, retweets: 15, likes: 75),
                verified: false
            ),
            Tweets(
                name: "Developer Dan",
                userName: "@devdan",
                timeOfPosting: "3h",
                profileIcon: "image1",
                tweet: "Just released a new app on the App Store! It's a productivity tool that helps you organize your tasks efficiently, track your progress, and collaborate with your team seamlessly. Check it out and let me know what you think!",
                interaction: Interaction(comments: 10, retweets: 20, likes: 100),
                verified: true
            ),
            Tweets(
                name: "Sara Lee",
                userName: "@saralee",
                timeOfPosting: "4h",
                profileIcon: "profileImage",
                tweet: "Working on a cool new project! #iOSDev",
                interaction: Interaction(comments: 2, retweets: 5, likes: 30),
                verified: false
            ),
            Tweets(
                name: "Mike Johnson",
                userName: "@mikejohnson",
                timeOfPosting: "5h",
                profileIcon: "image1",
                tweet: "Can't wait for the next WWDC!",
                interaction: Interaction(comments: 15, retweets: 25, likes: 150),
                verified: true
            )
        ]
    }
    
}
