//
//  AddCategorySheet.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 12/22/23.
//

import SwiftUI
import SwiftData

struct AddItemSheet: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    @State  var name: String = ""
    @State  var occurance = "Repeat"
    
    var body: some View {
        NavigationStack {
            VStack {
                
            }
        }
    }
}
        
//        #Preview {
//            AddCategorySheet()
//        }
