//
//  ListView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/11/24.
//

import SwiftUI

struct ListView: View {
    
    //    @EnvironmentObject var listViewModel: ListViewModel
    
    //    @Binding var isListActive: Bool
    //    @Binding var isSettingsActive: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("main-background")
                    .ignoresSafeArea()
                Divider()
                    .frame(height: 2)
                    .overlay(Color("btn-text"))
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                Spacer()
                List {
                    Text("Placeholder")
                }
                .background(Color("tabBar-background"))
            }
            .navigationTitle("Lists")
            .toolbar {
                Button {
                    
                } label: {
                    Image(systemName: "pencil.line")
                        .padding(.trailing, 30)
//                        .padding(.top, 80)
                        .foregroundColor(Color("btn-text"))
                }
            }
            .background(Color("main-background"))
        }
    }
}


#Preview {
    ListView()
}
