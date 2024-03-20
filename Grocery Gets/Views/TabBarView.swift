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
    @Binding var selectedTab: Tabs
    @Binding var isSettingsActive: Bool
    @Binding var isSearchActive: Bool
    @Binding var isListsActive: Bool
    
    var body: some View {
        
        HStack(alignment: .center) {
            Button {
                selectedTab = .Lists
            } label: {
                TabBarButton(buttonText: "Lists", imageName: "list.bullet.rectangle.portrait", isActive: selectedTab == .Lists)
            }
            Button {
                selectedTab = .Search
            } label: {
                    TabBarButton(buttonText: "Search", imageName: "magnifyingglass", isActive: selectedTab == .Search)
                }
            Button {
                selectedTab = .Settings
            } label: {
                TabBarButton(buttonText: "Settings", imageName: "gear", isActive: selectedTab == .Settings)
            }
        }
        .frame(height: 82)
    }
    
    //MARK: - Tab Bar Button Method(s)
    struct TabBarButton: View {
        
        var buttonText: String
        var imageName: String
        var isActive: Bool
        
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
    
}

#Preview {
    TabBarView(selectedTab: .constant(.Lists), isSettingsActive: .constant(false), isSearchActive: .constant(false), isListsActive: .constant(false))
}
