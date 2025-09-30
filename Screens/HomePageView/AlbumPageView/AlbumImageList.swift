//
//  AlbumImageList.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 06/09/25.
//

import SwiftUI

struct AlbumImageList: View {
    let album: AlbumItem
    var body: some View {
   
       
            Image(album.imageName)
                .resizable()
                .frame(width: 36, height: 36)
                .cornerRadius(5)
            
            Button(action: {}) {
                Image(systemName: "plus.circle")
                    .foregroundColor(.white)
            }
            
            Button(action: {}) {
                Image(systemName: "arrow.down.circle")
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
            }
            
            Button(action: {}) {
                Image(systemName: "sparkles")
                    .foregroundColor(.green)
            }
            
            Button(action: {}) {
                Image(systemName: "play.fill")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.green)
                    .clipShape(Circle())
            }
        }
        
    }

#Preview {
    AlbumImageList(album: sampleAlbums[0])
}
