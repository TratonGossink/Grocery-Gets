//
//  ListItemDetailViewModel.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/28/24.
//

import SwiftUI
import SwiftData

struct ListItemDetail: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: [SortDescriptor(\ListMain.status, order: .reverse), SortDescriptor(\ListMain.name), SortDescriptor(\ListMain.date)]) var listItems: [ListMain]

    var body: some View {
        List {
            ForEach(listItems) { listItem in
                NavigationLink(value: listItem) {
                    VStack(alignment: .leading) {
                        Text(listItem.name)
                            .font(.headline)
                        Text(listItem.date.formatted(date: .long, time: .shortened))
                    }
                }
            }
            .onDelete(perform: deleteItem)
        }
    }
    
    //MARK: - Search Method(s)
    init(sort: SortDescriptor<ListMain>, searchString: String) {
        _listItems = Query(filter: #Predicate {
            if searchString.isEmpty {
                return true
            } else {
                return $0.name.localizedStandardContains(searchString)
            }
        }, sort: [sort])
    }
     
    //MARK: - Delete Item Method
    
    func deleteItem(_ indexSet: IndexSet) {
        for index in indexSet {
            let itemDelete = listItems[index]
            modelContext.delete(itemDelete)
        }
    }
    
    //MARK: - Date Format Method(s)
    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

