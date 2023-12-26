//
//  CategoryItemCell.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 12/22/23.
//

import SwiftUI

struct AddItemCell: View {
    
    let categoryItem: AddItem
    
    var body: some View {
        HStack {
            Text(categoryItem.name)
        }
    }
}

//#Preview {
//    CategoryItemCell()
//}
