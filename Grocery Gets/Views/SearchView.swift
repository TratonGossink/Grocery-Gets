//
//  SearchView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/12/24.
//

import SwiftUI
import SwiftData

struct SearchView: View {

    @State private var sortOrder = SortDescriptor(\ListMain.name)
    @Binding var isSearchActive: Bool
    @State private var searchText = ""
    @State private var path = [ListMain]()
    
    var body: some View {
        NavigationStack(path: $path) {
            ListItemDetail(sort: sortOrder, searchString: searchText)
            .scrollContentBackground(.hidden)
            .background(Color("secondary-background"))
            .navigationTitle("Search")
            .searchable(text: $searchText)
        }
    }
    
    //MARK: - Search Method(s)
//    init(sort: SortDescriptor<ListMain>, searchString: String) {
//        _listItems = Query(filter: #Predicate {
//            if searchString.isEmpty {
//                return true
//            } else {
//                return $0.name.localizedStandardContains(searchString)
//            }
//        }, sort: [sort])
//    }
    
    //MARK: - Date Format Method(s)
    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
    
}

#Preview {
    SearchView(isSearchActive: .constant(false))
}
