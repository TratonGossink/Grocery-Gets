//
//  TabBarButton.swift
//  Chatty_Chat_App
//
//  Created by Traton Gossink on 7/29/23.
//

import SwiftUI

struct TabBarButton: View {
    
    var buttonText: String
    var imageName: String
    var isActive: Bool = false
    
    var body: some View {
        GeometryReader { geo in
            if isActive  {
                Rectangle()
                    .foregroundColor(Color("btn-background"))
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width/4)
            }
            
            VStack(alignment: .center, spacing: 0) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color("selected-tabitem"))
                Text(buttonText)
                    .font(Font.smallCaption)
                    .foregroundStyle(Color("text-primary"))
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(buttonText: "Lists", imageName: "list.bullet.rectangle.portrait", isActive: true)
    }
}
