//
//  PremiumView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 10/07/25.
//

import Foundation
import SwiftUI
struct PremiumView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                ContainerRelativeShape()
                    .fill(LinearGradient(colors:[Color.black,Color.black.opacity(2),Color.green], startPoint:.top,endPoint: .bottom))
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        VStack(alignment: .leading){
                            HStack(spacing : 8){
                                Image(systemName: "wave.3.up.circle.fill")
                                    .resizable()
                                    .foregroundStyle(.white)
                                    .frame(width: 30, height: 30)
                                Text("Premium")
                                    .font(.system(size: 25, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }
                            VStack{
                                Text("Listen without limits. Try 2 months of Premium Individual for $9.99/month. with Spotify.")
                                    .font(.system(size: 20, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                                    .padding()
                                Button {
                                    
                                } label: {
                                    Text("Try 2 months for $9.99/month")
                                        .font(.system(size: 20, weight: .bold, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 300, height: 50)
                                        .background(Color.white)
                                        .cornerRadius(20)
                                        .padding()
                                }
                                Text("₹119 for 2 months, then ₹119 per month after. Offer only available if you haven’t tried Premium before and you subscribe via Spotify. Offers via Google Play may differ.")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                    .foregroundColor(.gray)
                                    .padding()
                            }
                        }
                        Spacer()
                        VStack{
                            Text("Why join Premium?")
                                .font(.system(size: 20, weight: .bold, design: .default))
                            Divider()
                                .overlay(Color.white)
                            
                            Text("Ad-free music listening")
                                .font(.system(size: 15, weight: .bold, design: .default))
                                .padding(.bottom)
                            Text("Download to listen offline")
                                .font(.system(size: 15, weight: .bold, design: .default))
                            
                            Text("Play songs in any order")
                                .font(.system(size: 15, weight: .bold, design: .default))
                                .padding()
                            Text("High audio quality")
                                .font(.system(size: 15, weight: .bold, design: .default))
                            Text("Listen with friends in real time")
                                .font(.system(size: 15, weight: .bold, design: .default))
                                .padding()
                            Text("Organize listening queue")
                                .font(.system(size: 15, weight: .bold, design: .default))
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: 350, height: 350)
                        .background(Color.black.opacity(0.8))
                        .cornerRadius(10)
                        
                        VStack{
                            Text("Available plans")
                                .font(.system(size: 30, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .padding()
                            
                            PremiumCardView(cardName:"Individual", cardCost: 0, cardPoint1: "1 Premium account" ,cardPoint3: "Subscribe or one-time payment", ButtonText: "Try 4 months for 0")
                            PremiumCardView(cardName:"Family", cardCost: 179, cardPoint1: "Upto 6 Premium accounts",cardPoint3: "Subscribe or one-time payment", ButtonText: "Try 2 months for $179")
                            PremiumCardView(cardName:"Duo", cardCost: 149 , cardPoint1: "2 Premium accounts" ,cardPoint3: "Subscribe or one-time payment", ButtonText: "Try 2 months for $149")
                            PremiumCardView(cardName:"Student", cardCost: 59, cardPoint1: "1 verified Premium account", cardPoint3: "Subscribe or one-time payment", ButtonText: "Try 2 months for $59")
                        }
                        
                        
                    }
                }
            }
        }
    }
}
#Preview {
    PremiumView()
}
