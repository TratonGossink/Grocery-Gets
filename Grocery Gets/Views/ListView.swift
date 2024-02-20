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
                ScrollView {
                        HStack {
                            Text("Lists")
                                .font(Font.mainTitle)
                                .padding(.leading, 40)
                            Spacer()
                            Button {
                                
                            } label: {
                                Image(systemName: "pencil.line")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                //                                .tint(Color("selected-tabitem"))
                                    .padding(.trailing, 40)
                            }
                        }
                        Divider()
                            .frame(height: 2)
                            .overlay(Color("btn-text"))
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .padding(.top, 10)
                    Spacer()
                    Text("List")
                    }
                }
        }
    }
}


#Preview {
    ListView()
}
