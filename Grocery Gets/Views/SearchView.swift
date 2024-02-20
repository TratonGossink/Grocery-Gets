//
//  SearchView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/12/24.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var isSettingsActive: Bool
    @Binding var isListActive: Bool
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SearchView(isSettingsActive: .constant(false), isListActive: .constant(false))
}
