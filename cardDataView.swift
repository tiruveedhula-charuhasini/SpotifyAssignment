//
//  cardDataView.swift
//  charzSpotify
//
//  Created by Pavan Dharma on 25/06/25.
//
import SwiftUI

struct cardDataView: View {
    var imageName: String
    var name: String
    var artist: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            Text(name)
                .font(.headline)
            Text(artist)
                .font(.caption)
        }
    }
}
