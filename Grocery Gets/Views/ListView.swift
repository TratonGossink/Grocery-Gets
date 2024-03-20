//
//  ListView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/11/24.
//

import SwiftUI
import SwiftData

struct ListView: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: [ SortDescriptor(\ListMain.name), SortDescriptor(\ListMain.date)]) var listItems: [ListMain]
    
    @State var sortOrder = SortDescriptor(\ListMain.name)
    @State var path = [ListMain]()
    @State private var searchText = ""
    @State private var isListInputShowing = false
//    @State var listMain: ListMain
    
    var body: some View {
        NavigationStack(path: $path) {
            ListItemDetail(sort: sortOrder, searchString: searchText)
                .scrollContentBackground(.hidden)
                .background(Color("secondary-background"))
                .navigationTitle("Lists")
                .navigationDestination(for: ListMain.self, destination: SubListView.init)
                .toolbar {
                    Button("Add", systemImage: "plus"){
                        isListInputShowing.toggle()
                    }
                    .sheet(isPresented: $isListInputShowing) {
                        ListInputForm()
                    }
                    Menu("Sort", systemImage: "arrow.up.arrow.down") {
                        Picker("Sort", selection: $sortOrder) {
                            Text("Name")
                                .tag(SortDescriptor(\ListMain.name))
                            Text("Status")
                                .tag(SortDescriptor(\ListMain.status, order: .reverse))
                            Text("Date")
                                .tag(SortDescriptor(\ListMain.date))
                        }
                        .pickerStyle(.inline)
                    }
                }
        }
    }

//MARK: - Create New Item Method
func addNewItem() {
    let newItem = ListMain()
    modelContext.insert(newItem)
    path = [newItem]
}
        
//MARK: - Delete Item Method
//    func deleteItem(_ indexSet: IndexSet) {
//        for index in indexSet {
//            let itemDelete = listMain[index]
//            modelContext.delete(itemDelete)
//        }
}

//#Preview {
//    ListView(isListActive: .constant(false), listMain: ListMain)
//}
