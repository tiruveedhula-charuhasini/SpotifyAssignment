//
//  HomeView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 03/07/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedCategory = "All"
    @State private var likedSongs: Set<UUID> = []
    @State private var isPresented: AlbumItem? = nil
    let categories = ["All", "Music", "Podcasts"]
    var body: some View {
        NavigationStack{
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                Image(systemName: "person.crop.circle.fill")
                                    .resizable()
                                    .frame(width: 36, height: 36)
                                    .foregroundColor(.gray)
                                
                                ForEach(categories, id: \.self) { category in
                                    Button(action: {
                                        selectedCategory = category
                                    }) {
                                        Text(category)
                                            .padding(.horizontal, 16)
                                            .padding(.vertical, 8)
                                            .background(selectedCategory == category ? Color.green : Color.gray.opacity(0.4))
                                            .foregroundColor(selectedCategory == category ? .black : .white)
                                            .cornerRadius(20)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        VStack{
                           HomeGrid(likedSongs: likedSongs, isPresented: $isPresented)
                        }
                        .padding(.horizontal)
                        
                        
                        Text("Albums featuring songs you like")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                    VStack{
                        AlbumsView(likedSongs: $likedSongs)
                        }
                        .padding(.horizontal)
                        
                        Text("Popular artists")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        
                        VStack{
                            PopularView()
                        }
                        .padding(.horizontal)
                        
                        Text("Popular radio")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        
                       VStack{
                            PopRadioView()
                        }
                        Spacer(minLength: 100)
                    }
                    .padding(.top)
                }
                VStack{
                    MiniPlayerView()
                }
            }
            .background(Color.black.ignoresSafeArea())
          }
       }
    }
#Preview {
    HomeView()
}
