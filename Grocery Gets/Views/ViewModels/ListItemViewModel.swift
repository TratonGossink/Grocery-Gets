//
//  ListViewModel.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 3/19/24.
//

import SwiftUI
import SwiftData
import Foundation

class ListItemViewModel: ObservableObject {
    
    @Published var listItems = [ListMain]()
    @Published var selectedList: ListMain?
    @State private var sortOrder = SortDescriptor(\ListMain.name)
    @State private var searchText = ""
    
    
    
    init() {
        getLists(listItems: listItems)
    }
    
    func getLists(listItems: [ListMain]) {
        ListItemDetail(sort: sortOrder, searchString: searchText)
    }
    
    func getCategories() {
        
    }
    
}


