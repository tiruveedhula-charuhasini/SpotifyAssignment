//
//  PlaylistItem.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 03/07/25.
//

import Foundation

struct PlaylistItem: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

struct AlbumItem: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let imageName: String
    let releaseDate: String
    let tracks: [String]
}

struct ArtistItem: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

struct ArtistRadio: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

struct SearchItem: Identifiable {
    let id = UUID()
    let imageName: String
}

struct BrowseItem: Identifiable {
    let id = UUID()
    let imageName: String
    
}


