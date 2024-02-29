//
//  ListItemViewModel.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/20/24.
//

import SwiftUI
import CoreData

struct ItemRowViewModel: View {
    @Environment(\.managedObjectContext) var moc
    
    var itemName: String
    var itemDone: Bool
    
    
    var body: some View {
        HStack {
            Text(itemName)
            let dateCreated = Date.now
            Image(systemName: "checkmark")
        }
    }
}

#Preview {
    ItemRowViewModel(itemName: "New Name", itemDone: false)
}
