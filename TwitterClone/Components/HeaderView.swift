//
//  HeaderView.swift
//  TwitterClone
//
//  Created by Muhammed Nadeem on 28/07/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Image(.profile)
                    .resizable()
                    .frame(width: 32, height: 32)
                
                Spacer()
                
                Image(.twitterIcon)
                    .resizable()
                    .frame(width: 27, height: 22)
                
                Spacer()
                
                Image(.features)
                    .resizable()
                    .frame(width: 22, height: 22)
                
            }
            .padding()
            
            Divider()
        }
    }
}

struct HeaderView_Previews: PreviewProvider{
    static var previews: some View{
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
