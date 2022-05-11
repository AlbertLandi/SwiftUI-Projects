//
//  ContentView.swift
//  InstafilterTutorials
//
//  Created by Alberto Landi Cortiñas on 3/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink("How property wrappers become structs", destination: Tutorial1())
                    NavigationLink("Responding to state changes using onChange()", destination: Tutorial2())
                    NavigationLink("Showing multiple options with confirmationDialog()", destination: Tutorial3())
                    NavigationLink("Integrating Core Image with SwiftUI", destination: Tutorial4())
                    NavigationLink("Wrapping a UIViewController in a SwiftUI view", destination: Tutorial5())
                }
            }
            .navigationTitle("Instafilter Tutorials")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
