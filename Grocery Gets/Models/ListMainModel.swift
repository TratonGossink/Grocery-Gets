//
//  ListMain.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 3/5/24.
//
//

import Foundation
import SwiftData


@Model  class ListMain {
    var date: Date?
    var id: UUID?
    var name: String?
    var status: ItemStatus?
    
    init(id: Int, name: String, date: Date, status: ItemStatus) {
        self.id = UUID()
        self.name = name
        self.date = date
        self.status = status
    }
}

enum ItemStatus:  Codable {
    case pending
    case complete
}
