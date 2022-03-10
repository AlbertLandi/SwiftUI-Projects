//
//  ContentView.swift
//  CupcakeCornerTutorials
//
//  Created by Alberto Landi Cortiñas on 3/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                List {
                    NavigationLink("Tutorial 1", destination: Tutorial1())
                    NavigationLink("Tutorial 2", destination: Tutorial2())
                    NavigationLink("Tutorial 3", destination: Tutorial3())
                    NavigationLink("Tutorial 4", destination: Tutorial4())
                }
            }
            .navigationTitle("CupCake Tutorials")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
