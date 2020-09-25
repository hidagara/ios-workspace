//
//  timerationApp.swift
//  timeration
//
//  Created by RomanDev on 26.09.2020.
//

import SwiftUI

@main
struct timerationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
