//
//  ContentView.swift
//  charzSpotify
//
//  Created by Pavan Dharma on 24/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var Username: String = ""
    @State private var Password: String = ""
    @State private var isLoggedIn: Bool = false
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                ContainerRelativeShape()
                    .fill(Color.black)
                    .ignoresSafeArea(edges: .all)
                VStack{
                    Image("spotifylogo")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Text("Spotify")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(.white)
        
                    VStack{
                        TextField("Username", text: $Username)
                            .frame(width: 300)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        TextField("Password", text: $Password)
                            .frame(width: 300)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        Button {
                            isLoggedIn.toggle()
                        } label: {
                            Text("Sign Up")
                                .frame(width: 150, height: 40)
                                .background(Color.green)
                                .cornerRadius(20)
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .padding()
                        }
                    
                    }
                }
            }
            .fullScreenCover(isPresented: $isLoggedIn) {
                
                HomeView()
                
            }
        }

    }
}
#Preview {
    ContentView()
}
