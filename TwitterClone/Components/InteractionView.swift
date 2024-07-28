//
//  InteractionView.swift
//  TwitterClone
//
//  Created by Muhammed Nadeem on 28/07/24.
//

import SwiftUI

struct InteractionView: View {
    
    let interaction: Interaction
    
    var body: some View {
        HStack{
            HStack{
                Image(.comments)
                Text("\(interaction.comments)")
                    .font(.caption)
            }
            Spacer()
            HStack{
                Image(.retweets)
                Text("\(interaction.retweets)")
                    .font(.caption)
            }
            Spacer()
            HStack{
                Image(.heart)
                Text("\(interaction.likes)")
                    .font(.caption)
            }
            Spacer()
            HStack{
                Image(.share)
            }
        }
        .foregroundStyle(.gray)
    }
}

struct InteractionView_Provider: PreviewProvider{
    static var previews: some View{
        InteractionView(interaction: .init(comments: 2, retweets: 3, likes: 3))
            .previewLayout(.sizeThatFits)
    }
}
