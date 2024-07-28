//
//  AddTweetView.swift
//  TwitterClone
//
//  Created by Muhammed Nadeem on 28/07/24.
//

import SwiftUI

struct AddTweetView: View {
    var body: some View {
        Button{
            print("New Tweet!")
        }label: {
            Circle()
                .fill(Color(.twitterBlue))
                .overlay {
                    Image(.newPostIcon)
                        .resizable()
                        .frame(width: 22, height: 22)
                }
                .frame(width: 56, height: 56)
        }
    }
}

struct AddTweetView_Previews: PreviewProvider{
    static var previews: some View{
        AddTweetView()
            .previewLayout(.sizeThatFits)
    }
}
