//
//  M5_L7_Task1App.swift
//  M5_L7_Task1
//
//  Created by Bekhruz Hakmirzaev on 27/11/22.
//

import SwiftUI

@main
struct M5_L7_Task1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
