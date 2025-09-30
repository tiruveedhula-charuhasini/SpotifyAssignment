//
//  MiniPlayerView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 03/07/25.
//

import SwiftUI

struct MiniPlayerView: View {
    var body: some View {
        HStack(spacing: 12) {
            Image("dandelions")
                .resizable()
                .frame(width: 48, height: 48)
                .cornerRadius(4)

            VStack(alignment: .leading, spacing: 2) {
                Text("Dandelions • Ruth B.")
                    .font(.subheadline)
                    .foregroundColor(.white)
                Text("Airdopes 311 Pro")
                    .font(.caption)
                    .foregroundColor(.green)
            }

            Spacer()

            HStack(spacing: 12) {
                Image(systemName: "headphones")
                    .foregroundColor(.green)
                Image(systemName: "plus.circle")
                    .foregroundColor(.white)
                Image(systemName: "pause.fill")
                    .foregroundColor(.white)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color(.systemGray6).opacity(0.15))
    }
}

