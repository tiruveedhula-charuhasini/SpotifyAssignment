//
//  RadioView.swift
//  charzOriginalSpotify
//
//  Created by Pavan Dharma on 09/07/25.
//
import SwiftUI

struct PopRadioView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(popularRadio) { artists in
                    VStack(spacing: 8) {
                        Image(artists.imageName)
                            .resizable()
                            .aspectRatio(1, contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)

                        Text(artists.title)
                            .frame(width: 150)
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .lineLimit(1)
                    }
                }
            }
        }
    }
}
