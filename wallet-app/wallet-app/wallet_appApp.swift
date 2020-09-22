//
//  wallet_appApp.swift
//  wallet-app
//
//  Created by RomanDev on 23.09.2020.
//

import SwiftUI

@main
struct wallet_appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
