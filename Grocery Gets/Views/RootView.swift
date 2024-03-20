//
//  RootView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/9/24.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab: Tabs = .Lists
    @State var isListsActive: Bool = false
    @State var isSettingsActive: Bool = false
    @State var isSearchActive: Bool = false
    
    var body: some View {
        
        ZStack {
            Color("primary-background")
                .ignoresSafeArea()
            VStack {
                switch selectedTab {
                case .Lists:
                    ListView()
                case .Settings:
                    SettingsView(isSettingsActive: $isSettingsActive)
                case .Search:
                    SearchView(isSearchActive: $isSearchActive)
                }
                Spacer()
                TabBarView(selectedTab: $selectedTab, isSettingsActive: $isSettingsActive, isSearchActive: $isSearchActive, isListsActive: $isListsActive)
            }
        }
    }
}

//#Preview {
//    RootView()
//}
