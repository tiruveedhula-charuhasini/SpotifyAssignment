//
//  PopularView.swift
//  charzOriginalSpotify
//
//  Created by Pavan Dharma on 09/07/25.
//
import SwiftUI
struct PopularView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(popularArtists) { artist in
                    VStack(spacing: 8) {
                        Image(artist.imageName)
                            .resizable()
                            .aspectRatio(1, contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(150)
                        
                        Text(artist.title)
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .lineLimit(1)
                        
                    }
                }
                
            }
        }
        
    }
}
