//
//  SearchView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 04/07/25.
//

import SwiftUI

struct SearchView: View {
    @StateObject var searchView = SearchViewModel()
    let column: [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        
        let filteredSearchCategory = searchCategory.filter { searchView.searchText.isEmpty || $0.imageName.localizedCaseInsensitiveContains(searchView.searchText) }
        let filteredBrowseAll = browseAll.filter { searchView.searchText.isEmpty || $0.imageName.localizedCaseInsensitiveContains(searchView.searchText) }
        
        NavigationStack{
            ZStack{
                ContainerRelativeShape ()
                    .fill(Color.black)
                    .ignoresSafeArea(.all)
                
                VStack{
                    ScrollView{
                        VStack{
                            Text("Start browsing")
                                .frame(width: 400,alignment: .leading)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top, 20)
                            LazyVGrid(columns: column, spacing: 20){
                                
                                    ForEach(filteredSearchCategory) {item in
                                            Image(item.imageName)
                                                .resizable()
                                                .frame(width: 200, height: 60)
                                                .cornerRadius(10)
                                    }
                            }
                        }
                        
                        VStack{
                            Text("Browse all")
                                .frame(width: 400,alignment: .leading)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            LazyVGrid(columns: column){
                                ForEach(filteredBrowseAll) {item in
                                    HStack{
                                        Image(item.imageName)
                                            .resizable()
                                            .frame(width: 200, height: 100)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .searchable(text: $searchView.searchText, placement: .navigationBarDrawer, prompt: "What do you want to listen to?")

        }
    }
    }

#Preview {
    SearchView()
}
