//
//  ContentView.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 6/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List { 
                    Section(header: Text("Tutorials")) {
                        NavigationLink("Reading custom values from the environment with @EnvironmentObject", destination: Tutorial1())
                        NavigationLink("Creating tabs with TabView and tabItem()", destination: Tutorial2())
                        NavigationLink("Manually publishing ObservableObject changes", destination: Tutorial3())
                        NavigationLink("Understanding Swift's result type", destination: Tutorial4())
                        NavigationLink("Controlling image interpolation in SwiftUI", destination: Tutorial5())
                        NavigationLink("Creating context menus", destination: Tutorial6())
                        NavigationLink("Adding custom row swipe actions to a List", destination: Tutorial7())
                        NavigationLink("Scheduling local notifications", destination: Tutorial8())
                        NavigationLink("Adding Swift package dependencies in Xcode", destination: Tutorial8())


                    }
                }
            }
            .navigationTitle("HotProspect")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
