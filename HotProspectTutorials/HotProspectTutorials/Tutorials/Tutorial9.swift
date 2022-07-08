//
//  Tutorial9.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 7/8/22.
//

import SwiftUI
import SamplePackage

struct Tutorial9: View {
    let possibleNumbers = Array(1...60)
    
    var body: some View {
        VStack {
            Text(results)
        }
        .navigationBarTitle("Tutorial 8")
    }
    
    var results: String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.joined(separator: ", ")
    }
}

struct Tutorial9_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial9()
    }
}
