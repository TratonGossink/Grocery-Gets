//
//  SubListModel.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 3/19/24.
//

import Foundation
import SwiftData

@Model
class SubListModel {
    
    var name: String
    var date: Date
    var status: Int
    var complete: Bool
    
    init(name: String, date: Date, status: Int, complete: Bool) {
        self.name = name
        self.date = date
        self.status = status
        self.complete = complete
    }
}
