//
//  ListMain.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 3/5/24.
//
//

import Foundation
import SwiftData

@Model
class ListMain {
    var date: Date
    var name: String
    var status: Int
    var complete: Bool
    @Relationship() var subList = [SubListModel]()
    
    init(name: String = "", date: Date = .now, status: Int = 2, complete: Bool = false) {
        self.name = name
        self.date = date
        self.status = status
        self.complete = complete
    }
}


