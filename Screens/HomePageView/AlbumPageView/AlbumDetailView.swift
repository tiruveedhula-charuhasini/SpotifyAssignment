//
//  AlbumDetailView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 04/07/25.
//

import SwiftUI
struct AlbumDetailView: View {
    @Binding var likedSongs: Set<UUID>
    let album: AlbumItem
    var body: some View {
        let isLiked = likedSongs.contains(album.id)
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack{
                    Image(album.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 300)
                        .cornerRadius(8)
                        .padding(.top)
                    VStack{
                        Button{
                            if isLiked {
                                _ = likedSongs.remove(album.id)
                            } else {
                                _ = likedSongs.insert(album.id)
                            }
                        } label: {
                            Image(systemName: isLiked ? "heart.fill":"heart")
                                .foregroundColor(.red)
                                .frame(width: 50, height: 50)
                        }
                        .offset(x: 40, y: -160)
                        
                    }
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(album.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .foregroundColor(.white)
                        Text(album.artist)
                            .foregroundColor(.white)
                            .font(.subheadline)
                    }
                    Text("Album • \(album.releaseDate)")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    HStack(spacing: 24) {
                        AlbumImageList(album: album)
                    }
                    .padding(.vertical)

                        ForEach(album.tracks, id: \.self) { track in
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(track)
                                            .foregroundColor(.white)
                                            .font(.body)
                                        Text(album.artist)
                                            .foregroundColor(.gray)
                                            .font(.caption)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                }
                            }
                            Spacer()
                            Divider().background(Color.gray.opacity(0.2))
                        }
                }
                .padding()
            }
        }
        .background(Color.black.ignoresSafeArea())
    }
}

//#Preview {
//    AlbumDetailView(album: AlbumItem(title: "Sample Album", artist: "Sample Artist", imageName: "sample_image", releaseDate: "2025", tracks: ["Sample Track 1", "Sample Track 2"]))
//}

