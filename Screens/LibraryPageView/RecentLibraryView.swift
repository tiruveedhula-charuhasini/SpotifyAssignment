//
//  RecentLibraryView.swift
//  charzOriginalSpotify
//
//  Created by Nxtwave on 10/07/25.
//

import SwiftUI

struct RecentLibraryView: View {
    var imageName: String
    var text: String
    var subImage: String
    var subText: String
    var body: some View {
        VStack{
            HStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                VStack{
                    Text(text)
                        .font(.system(size: 27,weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.leading,10)
                    HStack{
                        Image(systemName:subImage)
                            .foregroundColor(.green)
                            .frame(width:30, height: 30)
                        Text(subText)
                            .font(.system(size: 15,weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.leading,20)
                    }
                    
                }
                Spacer()
            }
           
        }
    }
}
