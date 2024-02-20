//
//  ItemList.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/14/24.
//

import Foundation

class ItemList: ObservableObject {
    
    @objc dynamic var name: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var date = Date()
    
}
