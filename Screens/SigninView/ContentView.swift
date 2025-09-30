//
//  ContentView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 03/07/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var ViewModel = ContentViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                ContainerRelativeShape()
                    .fill(Color.black)
                    .ignoresSafeArea(edges: .all)
                VStack{
                    Image("spotify")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Text("Spotify")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    
                    VStack{
                        TextField("Username", text: $ViewModel.enteredUsername)
                            .frame(width: 300)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .foregroundColor(Color.black)
                        SecureField("Password", text: $ViewModel.enteredPassword)
                            .frame(width: 300)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        
                        
                        Button {
                            ViewModel.useAuthentication()
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
            .fullScreenCover(isPresented: $ViewModel.isLoggedIn) {
                NewTabView()
            }
            .alert("TRY AGAIN!", isPresented: $ViewModel.Alertmsg , actions: {
                Button("OK", role: .cancel) {
                }
                Button("CANCEL", role: .destructive){}
            }, message: {
                Text(ViewModel.Error)
            }
            )}
    }
    
}

#Preview {
    ContentView()
}
