//
//  ProfileView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 13/09/25.
//

import SwiftUI

struct ProfileView: View {
    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var isDarkMode: Bool = false
    @State var birthDate: Date = Date()
    @State var logOut: Bool = false
    @State var showContentView: Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                
                Form{
                    Toggle("Notifications", isOn: $isDarkMode)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                    Section(header: Text("Personal Information")) {
                        TextField("First name", text: $firstname)
                            .frame(width: 300, height: 50)
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                            .lineLimit(1)
                        TextField("Last name", text: $lastname)
                            .frame(width: 300, height: 50)
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                        DatePicker("Date of Birth", selection: $birthDate, displayedComponents: .date)
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                    }
                    .padding(.top)
                    
                    Button {
                        showContentView = true
                    } label: {
                        HStack(alignment: .center, spacing: 20){
                              Text("Logout")
                                .foregroundColor(.red)
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .foregroundColor(.red)
                        }
                    }

                   
                  
                    
                }
                
            }
            
            Spacer()
                .navigationTitle("Profile")
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
        
    }
}
#Preview {
    ProfileView()
}

