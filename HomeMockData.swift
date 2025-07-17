//
//  HomeMockData.swift
//  charzSpotify
//
//  Created by Pavan Dharma on 25/06/25.
//
import Foundation
import SwiftUI

struct HomeMockData: Identifiable {
    let id: UUID = UUID()
    let imageName: String
    let name: String
    let artist: String
    let audioFileName: String
}



struct HomeMockDataProvider {
    static let mockSongs: [HomeMockData] = [
        HomeMockData(imageName: "weekend", name: "Blinding Lights", artist: "The Weeknd", audioFileName: "blinding_lights"),
        HomeMockData(imageName: "levitating", name: "Levitating", artist: "Dua Lipa", audioFileName: "levitating"),
        HomeMockData(imageName: "stay", name: "Stay", artist: "The Kid LAROI & Justin Bieber", audioFileName: "stay"),
        HomeMockData(imageName: "unstoppable", name: "Unstoppable", artist: "Sia", audioFileName: "unstoppable"),
        HomeMockData(imageName: "peaches", name: "Peaches", artist: "Justin Bieber", audioFileName: "peaches"),
        HomeMockData(imageName: "as_it_was", name: "As It Was", artist: "Harry Styles", audioFileName: "as_it_was"),
        HomeMockData(imageName: "calm_down", name: "Calm Down", artist: "Rema & Selena Gomez", audioFileName: "calm_down"),
        HomeMockData(imageName: "bekhayali", name: "Bekhayali", artist: "Sachet Tandon", audioFileName: "bekhayali"),
        HomeMockData(imageName: "malang_sajna", name: "Malang Sajna", artist: "Sachet-Parampara", audioFileName: "malang_sajna"),
        HomeMockData(imageName: "hawayein", name: "Hawayein", artist: "Arijit Singh", audioFileName: "hawayein"),
        HomeMockData(imageName: "vaaste", name: "Vaaste", artist: "Dhvani Bhanushali", audioFileName: "vaaste"),
        HomeMockData(imageName: "heeriye", name: "Heeriye", artist: "Jasleen Royal & Arijit Singh", audioFileName: "heeriye"),
        HomeMockData(imageName: "jai_balayya", name: "Jai Balayya", artist: "Kaal Bhairava", audioFileName: "jai_balayya"),
        HomeMockData(imageName: "naatu_naatu", name: "Naatu Naatu", artist: "Rahul Sipligunj & Kaala Bhairava", audioFileName: "naatu_naatu"),
        HomeMockData(imageName: "ramulo_ramulaa", name: "Ramulo Ramulaa", artist: "Anurag Kulkarni", audioFileName: "ramulo_ramulaa"),
        HomeMockData(imageName: "inkem_inkem", name: "Inkem Inkem Inkem Kaavaale", artist: "Sid Sriram", audioFileName: "inkem_inkem"),
        HomeMockData(imageName: "hoyna_hoyna", name: "Hoyna Hoyna", artist: "Anirudh Ravichander", audioFileName: "hoyna_hoyna"),
        HomeMockData(imageName: "bullet_song", name: "Bullet Song", artist: "DSP & Nakash Aziz", audioFileName: "bullet_song")
    ]
}
