//
//  ContentViewModel.swift
//  charzSpotify
//
//  Created by Nxtwave on 02/07/25.
//

import Foundation
import SwiftUI
import Combine

class ContentViewModel: ObservableObject{
    @Published var isLoggedIn: Bool = false
    @Published var username: String = "Charu"
    @Published var password: String = "123"
    @Published var enteredUsername: String = ""
    @Published var enteredPassword: String = ""
    @Published var Error: String = ""
    @Published var Alertmsg: Bool = false
    
    
    func useAuthentication() {
        if username == enteredUsername && password == enteredPassword {
            isLoggedIn = true
        }
        else{
            Error = "Invalid Credentials"
            Alertmsg = true
        }
    }
}
