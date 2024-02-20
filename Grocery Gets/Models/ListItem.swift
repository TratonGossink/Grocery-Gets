//
//  Lists.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/11/24.
//

import Foundation
import RealmSwift

class ListItem: Object, ObjectKeyIdentifiable {
    
    @objc dynamic var name: String = ""
    
    var parentList = LinkingObjects(fromType: Category.self, property: "name")
    
}
