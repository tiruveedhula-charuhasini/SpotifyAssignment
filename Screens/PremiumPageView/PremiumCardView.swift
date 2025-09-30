//
//  PremiumCardView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 11/07/25.
//

import Foundation
import SwiftUI
struct PremiumCardView: View {
    let cardName: String
    let cardCost: Int
    let cardPoint1: String
    let cardPoint3: String
    let ButtonText: String
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack(spacing : 8){
                    Image(systemName: "wave.3.up.circle.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 20, height: 20)
                    Text("Premium")
                        .font(.system(size: 15, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                Text(cardName)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundStyle(.pink)
                Text("$\(cardCost) for 2 months")
                    .font(.system(size: 15, weight: .bold, design: .default))
                    .foregroundStyle(.gray)
            }
            .padding()
            Divider()
                .overlay(.white)
            Spacer()
            VStack{
                Text(cardPoint1)
                    .font(.system(size: 15, weight: .bold, design: .default))
                    .padding(.bottom)
                Text("Cancel anytime")
                    .font(.system(size: 15, weight: .bold, design: .default))
                    .padding(.bottom)
                Text(cardPoint3)
                    .font(.system(size: 15, weight: .bold, design: .default))
                Button {
                    
                } label: {
                    Text(ButtonText)
                        .font(.system(size: 15, weight: .bold, design: .default))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .foregroundColor(.white)
                        .background(Color.pink)
                        .cornerRadius(20)
                }
                Button {
                    
                } label: {
                    Text("One-time Payment")
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color.clear)
                        .overlay(
                            Capsule()
                                .stroke(Color.white.opacity(0.5), lineWidth: 1)
                        )
                }
                
                
                
            }
            Spacer()
        }
        .foregroundColor(.white)
        .frame(width: 350, height: 350)
        .aspectRatio(contentMode: .fill)
        .background(Color.black.opacity(0.8))
        .cornerRadius(15)
    }
}
