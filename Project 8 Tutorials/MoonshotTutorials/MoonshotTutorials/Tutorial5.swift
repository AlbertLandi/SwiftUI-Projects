//
//  Tutorial5.swift
//  MoonshotTutorials
//
//  Created by Alberto Landi Cortiñas on 2/23/22.
//

import SwiftUI

//Tutorial 5
struct Tutorial5: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000){
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct Tutorial5_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial5()
    }
}
