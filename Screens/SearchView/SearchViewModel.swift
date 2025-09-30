//
//  SearchViewModel.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 16/07/25.
//

import Foundation
import SwiftUI
import Combine

class SearchViewModel: ObservableObject {
    @Published var search: String = ""
    @Published var searchText: String = ""
    
}
