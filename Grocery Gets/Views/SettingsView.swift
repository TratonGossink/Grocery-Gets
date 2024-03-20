//
//  SettingsView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/12/24.
//

import SwiftUI

struct SettingsView: View {

    @Binding var isSettingsActive: Bool
    
    var body: some View {
        
        NavigationStack {
            List {
              
                Text("Placeholder")
            }
            .scrollContentBackground(.hidden)
            .background(Color("secondary-background"))
            .navigationTitle("Settings")
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SettingsView(isSettingsActive: .constant(false))
}
