//
//  HomeView.swift
//  charzSpotify
//
//  Created by Pavan Dharma on 25/06/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedSong: HomeMockData? = nil
    @State private var likedSongIDs: Set<UUID> = []

    var body: some View {
        NavigationStack {
            TabView {
                HomeCardView(selectedSong: $selectedSong)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }

                Group {
                    if let selectedSong = selectedSong {
                        MusicView(data: selectedSong, likedSongIDs: $likedSongIDs)
                    } else {
                        Text("Select a song")
                    }
                }
                .tabItem {
                    Image(systemName: "music.note")
                    Text("Music")
                }

                LibraryView(likedSongIDs: likedSongIDs, selectedSong: $selectedSong)
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("Library")
                    }
            }
        }
    }
}
