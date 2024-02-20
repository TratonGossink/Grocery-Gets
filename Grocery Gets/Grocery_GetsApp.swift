//
//  Grocery_GetsApp.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 12/22/23.
//

import SwiftUI
import CoreData

@main
struct Grocery_GetsApp: App {
    
    let persistenceController = PersistenceController.shared
    
    @StateObject var listViewModel = ListViewModel()
    @StateObject var searchViewModel = SearchViewModel()
    @StateObject var settingsViewModel = SettingsViewModel()
    
        var body: some Scene {
            WindowGroup {
                RootView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)}
    }
}
