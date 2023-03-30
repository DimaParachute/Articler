//
//  ArticlerApp.swift
//  Articler
//
//  Created by Дмитрий Фетюхин on 30.03.2023.
//

import SwiftUI

@main
struct ArticlerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
