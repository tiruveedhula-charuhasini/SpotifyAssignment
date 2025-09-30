//
//  LibraryView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 10/07/25.
//

import Foundation
import SwiftUI

struct LibraryView: View {
    @State private var selectedCategory = "Playlists"
    let categoryList = ["Playlists", "Downloaded"]
    var body: some View {
                NavigationStack{
                    ZStack{
                        ContainerRelativeShape()
                            .fill(Color.black)
                            .ignoresSafeArea(.all)
                ScrollView{
                    VStack{
                        HStack{
                           NavigationLink(destination:  ProfileView()){
                               Image(systemName: "person.crop.circle.fill")
                                   .resizable()
                                   .frame(width: 36, height: 36)
                                   .foregroundColor(.gray)
                            }
                            Text("Your Library")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 200, height: 20, alignment: .leading)
                            Button {
                                
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.gray)
                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 20, height: 20, alignment: .trailing)
                                    .foregroundColor(.gray)
                            }
                        }
                        HStack(spacing: 10){
                                ForEach(categoryList, id: \.self) { category in
                                    Button(action: {
                                        selectedCategory = category
                                    }) {
                                        Text(category)
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 10)
                                            .background(selectedCategory == category ? Color.green : Color.gray.opacity(0.4))
                                            .foregroundColor(selectedCategory == category ? .black : .white)
                                            .cornerRadius(20)
                                    }
                                }
                            }
                        .padding(.vertical,10)
                        }
                            .padding(.horizontal)
                    
                    HStack{
                        
                        Image(systemName: "arrow.up.arrow.down")
                            .foregroundColor(.white)
                        
                        Text("Most Recent")
                            .font(.system(size: 17,weight: .semibold))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "square.grid.2x2")
                                .foregroundColor(.white)
                                .frame(width:30, height: 30)
                        }
                    }
                    VStack{
                        RecentLibraryView(imageName: "liked_songs", text: "Liked Songs", subImage: "pin.fill", subText: "Playlist • 1 song")
                        RecentLibraryView(imageName: "local_files", text: "Local Files", subImage: "arrow.down.circle.fill", subText: "Playlist • 0 tracks")
                    }
                    }
                }
            }
        }
    }
#Preview {
    LibraryView()
}
