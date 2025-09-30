//
//  HomeGrid.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 09/07/25.
//
import SwiftUI
struct HomeGrid: View {
    let likedSongs: Set<UUID>
    @Binding var isPresented: AlbumItem?
    let playlistGrid = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: playlistGrid, spacing: 12) {
            ForEach(samplePlaylists) { item in
                Group {
                    if item.title == "Liked Songs" {
                        NavigationLink(destination: LikedSongsView(likedSongs: likedSongs, isPresented: $isPresented)) {
                            cellContent(for: item)
                        }
                    } else {
                        cellContent(for: item)
                    }
                }
            }
        }
    }

    private func cellContent(for item: PlaylistItem) -> some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 55, height: 55)
                .cornerRadius(5)
                .clipped()
            Text(item.title)
                .foregroundColor(.white)
                .font(.subheadline)
                .lineLimit(1)
            Spacer()
        }
        .padding(8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(8)
    }
}

