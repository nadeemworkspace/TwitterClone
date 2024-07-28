//
//  PostsView.swift
//  TwitterClone
//
//  Created by Muhammed Nadeem on 28/07/24.
//

import SwiftUI

struct PostsView: View {
    
    @State private var tweets: [Tweets] = []
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(spacing: 0){
                //Header
                HeaderView()
                //Posts
                List{
                    ForEach(tweets) { tweet in
                        TweetsView(tweet: tweet)
                    }
                }
                .listStyle(.plain)
            }
            AddTweetView()
                .padding()
        }
        .onAppear{
            tweets = Tweets.getTweets()
        }
    }
}

#Preview {
    PostsView()
}
