//
//  BookwormTutorialsApp.swift
//  BookwormTutorials
//
//  Created by Alberto Landi Cortiñas on 3/12/22.
//

import SwiftUI

@main
struct BookwormTutorialsApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
