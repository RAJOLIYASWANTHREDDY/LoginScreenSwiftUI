//
//  LoginScreenSwiftUIApp.swift
//  LoginScreenSwiftUI
//
//  Created by yaswanth reddy on 6/18/26.
//

import SwiftUI
import CoreData

@main
struct LoginScreenSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
