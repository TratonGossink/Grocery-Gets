//
//  SettingsView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/12/24.
//

import SwiftUI

struct SettingsView: View{
    
    @EnvironmentObject var settingsViewModel: SettingsViewModel
    @Binding var isSettingsActive: Bool
    @Binding var isListActive: Bool
    
    var body: some View {
        
        Form {
            NavigationStack{
                Toggle("Dark Mode", isOn: $settingsViewModel.isDarkMode)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    SettingsView(isSettingsActive: .constant(false), isListActive: .constant(false))
}
