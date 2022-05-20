//
//  ContentView.swift
//  AccessibilityTutorials
//
//  Created by Alberto Landi Cortiñas on 5/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Tutorials")) {
                        NavigationLink("Identifying views with useful labels", destination: Tutorial1())
                        NavigationLink("Hiding and grouping accessibility data", destination: Tutorial2())
                        NavigationLink("Reading the value of controls", destination: Tutorial3())
                    }
                }
            }
            .navigationTitle("Accessibility")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
