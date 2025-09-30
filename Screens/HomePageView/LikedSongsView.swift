//
//  LikedSongsView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 04/09/25.
//

import SwiftUI

struct LikedSongsView: View {
    let likedSongs: Set<UUID>
    @Binding var isPresented: AlbumItem?
    var body: some View {
        let likedSong = sampleAlbums.filter { likedSongs.contains($0.id) }
        NavigationStack{
            ZStack{
                ContainerRelativeShape()
                    .fill(Color.black)
                    .ignoresSafeArea()
                ScrollView {
                    ForEach(likedSong) { album in
                        VStack(alignment: .leading) {
                            HStack(spacing: 16) {
                                Image(album.imageName)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                VStack(alignment: .leading) {
                                    Text(album.title)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text(album.artist)
                                        .font(.caption)
                                        .foregroundColor(.white)
                                        .padding(.top, 4)
                                }
                                Spacer()
                                Image(systemName: "play.fill")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.white)
                                Image(systemName: "arrow.down.circle")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical, 8)
                            Divider()
                                .background(Color.white.opacity(0.2))
                        }
                        .onTapGesture {
                            isPresented = album
                        }
                    }
                    .navigationTitle(Text("Liked Playlist"))
                }
            }
        }
    }
}
//#Preview {
//    LikedSongsView(likedSongs: [])
//}
