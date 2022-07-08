//
//  Tutorial6.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 7/8/22.
//

import SwiftUI
import UserNotifications

struct Tutorial6: View {
    @State private var backgroundColor = Color.red
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .background(backgroundColor)
            
            Text("Change Color")
                .padding()
                .contextMenu {
                    Button(role: .destructive) {
                        backgroundColor = .red
                    } label: {
                        Label("Red", systemImage: "checkmark.circle.fill")
                    }
                    Button(role: .destructive) {
                        backgroundColor = .green
                    } label: {
                        Label("Green", systemImage: "checkmark.circle.fill")
                    }
                    Button(role: .destructive) {
                        backgroundColor = .blue
                    } label: {
                        Label("Blue", systemImage: "checkmark.circle.fill")
                    }
                }
        }
        .navigationBarTitle("Tutorial 6")
    }
}

struct Tutorial6_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial6()
    }
}
