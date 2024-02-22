//
//  RootView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/9/24.
//

import SwiftUI

struct RootView: View {
    
//    @EnvironmentObject var listViewModel: ListViewModel
    @State var selectedTab: Tabs = .Lists
    @State var isListActive: Bool = false
    @State var isSettingsActive = false
    
    var body: some View {
        
        ZStack {
            Color("main-background")
                .ignoresSafeArea()
            VStack {
//                switch selectedTab {
////                case .Lists:
////                    ListView(isListActive: $isListActive, isSettingsActive: $isSettingsActive)
//                case .Search:
//                    SearchView(isSettingsActive: $isSettingsActive, isListActive: $isListActive)
//                case .Settings:
//                    SettingsView(isSettingsActive: $isSettingsActive, isListActive: $isListActive)
//                }
                Spacer()
                TabBarView(selectedTab: $selectedTab, isSettingsActive: $isSettingsActive, isListActive: $isListActive)
            }
        }
    }
}

#Preview {
    RootView()
}
