//
//  ContentView.swift
//  MoonshotTutorials
//
//  Created by Alberto Landi Cortiñas on 2/23/22.
//

import SwiftUI

//Tutorial 1
struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            Image("example")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
