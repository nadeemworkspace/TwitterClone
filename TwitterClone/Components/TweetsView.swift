//
//  TweetsView.swift
//  TwitterClone
//
//  Created by Muhammed Nadeem on 28/07/24.
//

import SwiftUI

struct TweetsView: View {
    
    let tweet: Tweets
    
    var body: some View {
        HStack(alignment: .top, spacing: 10){
            Text("").frame(maxWidth: 0)
            Image(tweet.profileIcon)
                .resizable()
                .clipShape(Circle())
                .frame(width: 55, height: 55)
                .offset(y: 5)
            VStack(alignment: .leading, spacing: 5){
                HStack{
                    Text(tweet.name)
                        .font(.headline)
                    if tweet.verified{
                        Image(.verified)
                            .frame(width: 14, height: 14)
                    }
                    Text(tweet.userName)
                        .foregroundStyle(.secondary)
                    Text(tweet.timeOfPosting)
                        .foregroundStyle(.secondary)
                }
                .lineLimit(1)
                Text(tweet.tweet)
                    .font(.system(size: 16))
                InteractionView(interaction: tweet.interaction)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .offset(x: -12)
            }
        }
    }
}

struct TweetsView_Provider: PreviewProvider{
    static var previews: some View{
        TweetsView(tweet: Tweets.getTweets()[4])
            .previewLayout(.sizeThatFits)
    }
}
