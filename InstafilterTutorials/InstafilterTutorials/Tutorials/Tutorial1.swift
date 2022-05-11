//
//  Tutorial1.swift
//  InstafilterTutorials
//
//  Created by Alberto Landi Cortiñas on 3/18/22.
//

import SwiftUI

struct Tutorial1: View {
    @State private var blurAmount = 0.0 {
        didSet {
            print("New value is \(blurAmount)")
        }
    }
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)
                .padding()
            
            Button("Random Blur") {
                blurAmount = Double.random(in: 0...20)
            }
            .buttonStyle(.bordered)
        }
        .navigationBarTitle("How property wrappers become structs", displayMode: .inline)
    }
}

struct Tutorial1_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial1()
    }
}
