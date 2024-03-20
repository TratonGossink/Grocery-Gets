//
//  Grocery_GetsApp.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 12/22/23.
//

import SwiftUI
import SwiftData

@main
struct Grocery_GetsApp: App {

        var body: some Scene {
            WindowGroup {
                RootView()
        }
            .modelContainer(for: ListMain.self)
    }
}
