//
//  Tutorial5.swift
//  DrawingTutorials
//
//  Created by Alberto Landi Cortiñas on 2/27/22.
//

import SwiftUI

//Tutorial 5
struct Tutorial5: View {
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20)
            .frame(width: 300, height: 200)
    }
}

struct Tutorial5_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial5()
    }
}
