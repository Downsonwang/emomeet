//
//  emomeetApp.swift
//  emomeet
//
//  Created by 王玉松 on 2024/12/8.
//

import SwiftUI
import SwiftData

@main
struct emomeetApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
           MainTabView()
        }
        .modelContainer(sharedModelContainer)
    }
}
