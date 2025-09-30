//
//  TabView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 10/07/25.
//

import SwiftUI
struct NewTabView : View {
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Home")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Search")
                }
            LibraryView()
                .tabItem {
                    Image(systemName: "books.vertical")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Your Library")
                }
            PremiumView()
                .tabItem {
                    Image(systemName: "wave.3.up.circle.fill")
                    Text("Premium")
                }
            
        }
    }
}
#Preview {
    NewTabView()
}
