//
//  Tutorial3.swift
//  AccessibilityTutorials
//
//  Created by Alberto Landi Cortiñas on 5/20/22.
//

import SwiftUI

struct Tutorial3: View {
    
    @State private var value = 10
    var body: some View {
        VStack {
            Text("Value: \(value)")
            
            HStack {
                Button("Increment") {
                    value += 1
                }
                .buttonStyle(.bordered)
                
                Button("Decrement") {
                    value -= 1
                }
                .buttonStyle(.bordered)
            }
        }
        .navigationBarTitle("Tutorial 3")
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction() { direction in
            switch direction {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            default:
                print("Not handled")
            }
        }
    }
}

struct Tutorial3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
