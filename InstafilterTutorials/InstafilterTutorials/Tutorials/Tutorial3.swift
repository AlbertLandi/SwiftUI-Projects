//
//  Tutorial3.swift
//  InstafilterTutorials
//
//  Created by Alberto Landi Cortiñas on 3/18/22.
//

import SwiftUI

struct Tutorial3: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 300)
                .background(backgroundColor)
                .onTapGesture {
                    showingConfirmation = true
                }
                .confirmationDialog("Change background", isPresented: $showingConfirmation) {
                    Button("Red") { backgroundColor = .red }
                    Button("Green") { backgroundColor = .green }
                    Button("Blue") { backgroundColor = .blue }
                } message: {
                    Text("Select a new color")
                }
        }
        .navigationBarTitle("Showing multiple options with confirmationDialog()", displayMode: .inline)
    }
}

struct Tutorial3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
