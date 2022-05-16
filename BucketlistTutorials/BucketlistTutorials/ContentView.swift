//
//  ContentView.swift
//  BucketlistTutorials
//
//  Created by Alberto Landi Cortiñas on 5/15/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Tutorials")) {
                        NavigationLink("Adding conformance to Comparable for custom types", destination: Tutorial1())
                        NavigationLink("Writing data to the documents directory", destination: Tutorial2())
                        NavigationLink("Switching view states with enums", destination: Tutorial3())
                        NavigationLink("Integrating MapKit with SwiftUI", destination: Tutorial4())
                        NavigationLink("Using Touch ID and Face ID with SwiftUI", destination: Tutorial5())
                        NavigationLink("Adding user locations to a map", destination: Tutorial6())

                    }
                }
            }
            .navigationTitle("Bucketlist Tutorials")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
