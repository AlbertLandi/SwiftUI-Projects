//
//  ContentView.swift
//  CoreDataTutorials
//
//  Created by Alberto Landi Cortiñas on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink("Why does 'backslash dot self' work for ForEach?", destination: Tutorial1())
                    NavigationLink("Creating NSManagedObject subclasses", destination: Tutorial2())
                    NavigationLink("Conditional saving of NSManagedObjectContext", destination: Tutorial3())
                    NavigationLink("Ensuring Core Data objects are unique using constraints", destination: Tutorial4())
                    NavigationLink("Filtering @FetchRequest using NSPredicate", destination: Tutorial5())
                    NavigationLink("Dynamically filtering @FetchRequest with SwiftUI", destination: Tutorial6())
                    NavigationLink("One-to-many relationships with Core Data, SwiftUI, and @FetchRequest", destination: Tutorial7())
                }
            }
            .navigationTitle("Core Data Tutorials")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
