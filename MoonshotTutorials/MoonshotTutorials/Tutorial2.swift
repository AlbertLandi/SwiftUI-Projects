//
//  Tutorial2.swift
//  MoonshotTutorials
//
//  Created by Alberto Landi Cortiñas on 2/23/22.
//

import SwiftUI

//Tutorial 2

struct CustomText: View {
    let text: String
    var body: some View {
        Text(text)
    }
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct Tutorial2: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
        }
    }
}

struct Tutorial2_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial2()
    }
}
