//
//  Tutorial2.swift
//  AccessibilityTutorials
//
//  Created by Alberto Landi Cortiñas on 5/20/22.
//

import SwiftUI

struct Tutorial2: View {
    var body: some View {
        VStack {
            Image(decorative: "nicolas-tissot-335096")
                .padding(.bottom)
            
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        .navigationTitle("Tutorial 2")
        .accessibilityElement(children: .combine)
        .accessibilityLabel("Your score is")
    }
}

struct Tutorial2_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial2()
    }
}
