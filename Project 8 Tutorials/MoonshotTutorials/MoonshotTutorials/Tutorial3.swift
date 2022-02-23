//
//  Tutorial3.swift
//  MoonshotTutorials
//
//  Created by Alberto Landi Cortiñas on 2/23/22.
//

import SwiftUI

//Tutorial 3
struct Tutorial3: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text("Row \(row)")
                        .padding()
                }
                .navigationTitle("SwiftUI")
            }
        }
    }
}

struct Tutorial3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
