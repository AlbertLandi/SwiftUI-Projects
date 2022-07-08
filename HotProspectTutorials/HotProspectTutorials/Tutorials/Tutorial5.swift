//
//  Tutorial5.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 7/7/22.
//

import SwiftUI
import UserNotifications

struct Tutorial5: View {
    var body: some View {
        VStack {
            Image("example")
                .interpolation(.none)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: .infinity)
                .background(.black)
                .ignoresSafeArea()
        }
        .navigationBarTitle("Tutorial 5")
    }
}

struct Tutorial5_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial5()
    }
}
