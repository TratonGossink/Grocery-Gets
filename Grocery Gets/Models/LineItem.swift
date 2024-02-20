//
//  LineItem.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/14/24.
//

import Foundation
import RealmSwift

class lineItem: Object, ObjectKeyIdentifiable {
    
    @objc dynamic var name: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    
//    var parentCategory = LinkingObjects(fromType: CategoryItem.self, property: "name")
}
