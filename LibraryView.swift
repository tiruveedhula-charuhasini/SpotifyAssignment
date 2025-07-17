//
//  LibraryView.swift
//  charzSpotify
//
//  Created by Pavan Dharma on 25/06/25.
//

import SwiftUI

struct LibraryView: View {
    let likedSongIDs: Set<UUID>
    @Binding var selectedSong: HomeMockData?

    var body: some View {
        let likedSongs = HomeMockDataProvider.mockSongs.filter { likedSongIDs.contains($0.id) }

        ZStack {
            Color.black.ignoresSafeArea()

            VStack(alignment: .leading, spacing: 20) {
                HStack(spacing: 20) {
                    Text("T")
                        .frame(width: 50, height: 50)
                        .background(Color.white)
                        .cornerRadius(100)
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.black)

                    Text("Your Library")
                        .font(.system(size: 30, weight: .medium))
                        .foregroundColor(.white)

                    Spacer()

                    Image(systemName: "waveform.badge.magnifyingglass")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)

                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                }
                .padding(.horizontal)

                HStack {
                    Text("Playlists")
                        .frame(width: 130, height: 35)
                        .background(Color.white)
                        .cornerRadius(100)
                        .foregroundColor(.black)

                    Text("Downloaded")
                        .frame(width: 180, height: 35)
                        .background(Color.white)
                        .cornerRadius(100)
                        .foregroundColor(.black)
                }
                .padding(.horizontal)

                Text("Liked Songs")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.horizontal)

                ScrollView {
                    VStack(spacing: 15) {
                        ForEach(likedSongs) { song in
                            HStack {
                                Image(song.imageName)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(10)

                                VStack(alignment: .leading) {
                                    Text(song.name)
                                        .foregroundColor(.white)
                                        .font(.headline)
                                    Text(song.artist)
                                        .foregroundColor(.gray)
                                        .font(.caption)
                                }

                                Spacer()
                            }
                            .padding(.horizontal)
                            .onTapGesture {
                                selectedSong = song
                            }
                        }

                        if likedSongs.isEmpty {
                            Text("No liked songs yet!")
                                .foregroundColor(.gray)
                                .padding()
                        }
                    }
                }
            }
        }
    }
}
