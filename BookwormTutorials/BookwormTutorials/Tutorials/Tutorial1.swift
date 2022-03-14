//
//  Tutorial1.swift
//  BookwormTutorials
//
//  Created by Alberto Landi Cortiñas on 3/12/22.
//

import SwiftUI

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(
            LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom)
        )
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0 : 5)
    }
}

struct Tutorial1: View {
    @State private var rememberMe = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                PushButton(title: "Remember Me", isOn: $rememberMe)
                    .padding()
                Text(rememberMe ? "On" : "Off")
                    .font(.headline)
                    .padding()
            }
            .navigationTitle("Creating a custom component with @Binding")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct Tutorial1_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial1()
    }
}
