//
//  ListInputForm.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/26/24.
//      

import SwiftUI
import SwiftData

struct ListInputForm: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
//    @Bindable var listMain: ListMain
    @State private var name: String = ""
    @State private var date: Date = .now
    @State private var status: Int = 2
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter title", text: $name)
                } header: {
                    Text("Title")
                }
                Section {
                    DatePicker("Select a date", selection: $date, displayedComponents: .date)
                } header: {
                    Text("Date")
                }
                Section("Status") {
                    Picker("Select status", selection: $status) {
                        Text("Low").tag(1)
                        Text("Pending").tag(2)
                        Text("Urgent").tag(3)
                    }
                    .pickerStyle(.segmented)
                }
                .navigationTitle("New List")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Save") {
                            /// Saves data and dismisses sheet
                            let newItem = ListMain()
                            modelContext.insert(newItem)
                            try? modelContext.save()
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}
        


//#Preview {
//    ListInputForm(isPresented: .constant(false))
//}
