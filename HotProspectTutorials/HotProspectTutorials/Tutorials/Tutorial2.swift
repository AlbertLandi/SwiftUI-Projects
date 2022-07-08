//
//  Tutorial2.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 6/9/22.
//

import SwiftUI

struct Tutorial2: View {
    var body: some View {
        VStack {
            TabView {
                Text("Tab 1")
                    .tabItem {
                        Label("One", systemImage: "star")
                    }
                Text("Tab 2")
                    .tabItem {
                        Label("Two", systemImage: "circle")
                    }
            }
        }
        .navigationBarTitle("Tutorial 2")
    }
}

struct Tutorial2_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial2()
    }
}
