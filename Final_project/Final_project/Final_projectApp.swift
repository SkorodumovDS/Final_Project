//
//  Final_projectApp.swift
//  Final_project
//
//  Created by Skorodumov Dmitry on 23.12.2023.
//

import SwiftUI

@main
struct Final_projectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            //ContentView()
              //  .environment(\.managedObjectContext, persistenceController.container.viewContext)
            FeedView()
        }
    }
}
