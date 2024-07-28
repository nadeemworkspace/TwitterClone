//
//  HomeView.swift
//  TwitterClone
//
//  Created by Muhammed Nadeem on 28/07/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            
            PostsView()
                .tabItem {
                    Image(.home)
                }
            SeachView()
                .tabItem {
                    Image(.search)
                }
            NotificationView()
                .tabItem {
                    Image(.notify)
                }
            MessageView()
                .tabItem {
                    Image(.mail)
                }
        }
    }
}

#Preview {
    HomeView()
}
