//
//  CategoryItem.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/14/24.
//

import Foundation
import RealmSwift

class CategoryItem: Object, ObjectKeyIdentifiable {
    
    @objc dynamic var title: String = ""
    @objc dynamic var complete: Bool = false
    
//    var parentItem = List<ListItem>()
    
}
