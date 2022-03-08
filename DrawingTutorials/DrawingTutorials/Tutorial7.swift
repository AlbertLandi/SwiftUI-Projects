//
//  Tutorial7.swift
//  DrawingTutorials
//
//  Created by Alberto Landi Cortiñas on 3/7/22.
//

import SwiftUI

struct Tutorial7: View {
    @State private var amount = 0.4
    var body: some View {
        VStack {
            Spacer()
            
            Image("example")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .saturation(amount)
                .blur(radius: (1 - amount) * 20)
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(.red)
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)

                Circle()
                    .fill(.green)
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)

                Circle()
                    .fill(.blue)
                    .frame(width: 200 * amount)
                    .blendMode(.screen)
            }
            .frame(width: 300, height: 300)
            
            Slider(value: $amount)
                .padding()
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
}

struct Tutorial7_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial7()
    }
}
