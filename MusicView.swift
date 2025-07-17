//
//  MusicView.swift
//  charzSpotify
//
//  Created by Pavan Dharma on 25/06/25.
//

import SwiftUI
import AVKit

struct MusicView: View {
    let data: HomeMockData
    @Binding var likedSongIDs: Set<UUID>
    @StateObject private var musicPlayer = MusicPlayer()
    
    var body: some View {
        let isLiked = likedSongIDs.contains(data.id)

        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 20) {
                Image(data.imageName)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)

                Divider()

                HStack(spacing: 40) {
                    Text(data.name)
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.leading, 20)

                    Button {
                        
                        if isLiked {
                            _ = likedSongIDs.remove(data.id)
                        } else {
                            _ = likedSongIDs.insert(data.id)
                        }
                    } label: {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(isLiked ? .red : .white)
                    }
                }

                HStack(spacing: 50) {
                    Text(data.artist)
                        .font(.caption)
                        .foregroundColor(.white)
                }

                Divider()
                    .frame(width: 100)

                HStack(spacing: 30) {
                    Button {
                        musicPlayer.playSound(named: data.audioFileName)
                    } label: {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                    }

                    Button {
                        musicPlayer.pause()
                    } label: {
                        Image(systemName: "pause.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                    }

                    Button {
                        musicPlayer.stop()
                    } label: {
                        Image(systemName: "stop.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}
