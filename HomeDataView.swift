//
//  HomeDataView.swift
//  charzSpotify
//
//  Created by Pavan Dharma on 25/06/25.
//


import SwiftUI
struct HomeCardView: View {
    let column : [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    @Binding var selectedSong: HomeMockData?

    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: column) {
                    ForEach(HomeMockDataProvider.mockSongs) { data in
                        cardDataView(imageName: data.imageName, name: data.name, artist: data.artist)
                            .onTapGesture {
                                selectedSong = data
                            }
                    }
                }
                .padding()
            }
        }
        .background(Color.black)
        .ignoresSafeArea(.all)
        .foregroundColor(Color.white)
    }
}

#Preview {
    HomeCardView(selectedSong: .constant(
        HomeMockData(imageName: "weekend", name: "Blinding Lights", artist: "The Weekend", audioFileName: "blinding_lights")
    ))
}
