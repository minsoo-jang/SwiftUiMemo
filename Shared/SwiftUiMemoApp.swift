//
//  SwiftUiMemoApp.swift
//  Shared
//
//  Created by Minsoo Jang on 2022/04/23.
//

import SwiftUI

@main
struct SwiftUiMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
