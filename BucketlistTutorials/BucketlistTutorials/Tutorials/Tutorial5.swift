//
//  Tutorial5.swift
//  BucketlistTutorials
//
//  Created by Alberto Landi Cortiñas on 5/15/22.
//

import LocalAuthentication
import SwiftUI

struct Tutorial5: View {
    @State private var isUnlocked = false
    
    var body: some View {
        VStack {
            if isUnlocked {
                Text("Unlocked!")
            } else {
                Text("Locked")
            }
        }
        .onAppear(perform: authenticate)
        .navigationBarTitle("Tutorial 5")
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "We need to unlock your data."
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                if success {
                    isUnlocked = true
                } else {
                    // problem
                }
            }
        } else {
            // no biometrics
        }
    }
}

struct Tutorial5_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial5()
    }
}
