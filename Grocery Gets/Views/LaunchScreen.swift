//
//  LaunchScreen.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 12/15/23.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isActive: Bool = false
    @State private var iconSize = 0.4
    @State private var iconOpacity = 0.6
//    private var tabSelection: TabSelection
//    private var isSelectedShowing: Bool = false
    
    var body: some View {
        if isActive {
//            CategoryView()
//            SettingsView(isSettingsShowing: true)
//            MainMenuView(tabSelection: TabSelection, isSelectedShowing: $isSelectedShowing)
        } else {
            VStack{
                VStack{
                    Image(systemName: "cart")
                        .font(.system(size: 150))
                        .foregroundColor(.green)
                    Text("Grocery Gets")
                        .font(.custom("Roboto-Bold", size: 40))
                        .foregroundColor(.black.opacity(0.8))
                }
                .scaleEffect(iconSize)
                .opacity(iconOpacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.5)) {
                        self.iconSize = 1.0
                        self.iconOpacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.isActive = true
                }
            }
        }
    }
}

//#Preview {
//    LaunchScreen()
//}
