//
//  Tutorial2.swift
//  BookwormTutorials
//
//  Created by Alberto Landi Cortiñas on 3/12/22.
//

import SwiftUI

struct Tutorial2: View {
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $notes)
                    .navigationTitle("Notes")
                    .padding()
            }
        }
        .navigationTitle("Accepting multi-line text input with TextEditor")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Tutorial2_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial2()
    }
}
