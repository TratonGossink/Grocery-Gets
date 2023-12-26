//
//  Category.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 12/22/23.
//

import Foundation
import SwiftData

@Model
class AddItem {
    
    var id = UUID()
    var name: String
    var date: Date
    var categoryItem: [AddItem]?
    
    init(id: UUID = UUID(), name: String, priority: String, icon: String, categoryItem: [AddItem]? = nil) {
        self.id = id
        self.name = name
        self.date = Date()
        self.categoryItem = categoryItem
    }
}
