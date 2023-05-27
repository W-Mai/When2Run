//
//  When2RunApp.swift
//  When2Run
//
//  Created by W-Mai on 2023/5/27.
//

import SwiftUI

@main
struct When2RunApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
