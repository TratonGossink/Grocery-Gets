//
//  TabBarView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/9/24.
//

import SwiftUI

enum Tabs: Int {
    case Lists = 0
    case Search = 1
    case Settings = 2
}

struct TabBarView: View {
    @EnvironmentObject var settingsViewModel: SettingsViewModel
    @Binding var selectedTab: Tabs
    @Binding var isSettingsActive: Bool
    @Binding var isListActive: Bool
    
    var body: some View {
        
        HStack {
            Button {
                selectedTab = .Lists
            } label: {
                TabBarButton(buttonText: "Lists", imageName: "list.bullet.rectangle.portrait", isActive: true)
            }
            Button {
                selectedTab = .Search
            } label: {
                VStack {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .foregroundStyle(Color("selected-tabitem"))
                    Text("Search")
                        .font(Font.smallCaption)
                        .foregroundStyle(Color("text-primary"))
                }
            }
            Button {
                selectedTab = .Settings
            } label: {
                TabBarButton(buttonText: "Settings", imageName: "gear", isActive: true)
            }
        }
    }
}

#Preview {
    TabBarView(selectedTab: .constant(.Lists), isSettingsActive: .constant(false), isListActive: .constant(false))
}
