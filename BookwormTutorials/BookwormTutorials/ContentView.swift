//
//  ContentView.swift
//  BookwormTutorials
//
//  Created by Alberto Landi Cortiñas on 3/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink("Creating a custom component with @Binding", destination: Tutorial1())
                    NavigationLink("Accepting multi-line text input with TextEditor", destination: Tutorial2())
                    NavigationLink("How to combine Core Data and SwiftUI", destination: Tutorial3())
                }
            }
            .navigationTitle("Bookworm Tutorials")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
