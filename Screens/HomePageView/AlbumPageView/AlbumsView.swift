//
//  AlbumsView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 09/07/25.
//

import SwiftUI

struct AlbumsView: View {
    @Binding var likedSongs: Set<UUID>
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(sampleAlbums) { album in
                    NavigationLink(destination: AlbumDetailView(likedSongs: $likedSongs, album: album)) {
                        VStack(spacing: 8) {
                            Image(album.imageName)
                                .resizable()
                                .aspectRatio(1, contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .cornerRadius(10)
                            
                            Text(album.title)
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .lineLimit(1)
                            
                            Text(album.artist)
                                .foregroundColor(.gray)
                                .font(.caption)
                                .lineLimit(1)
                        }
                    }
                    }
                }
            }
        
    }
}
                        
