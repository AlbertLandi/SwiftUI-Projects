//
//  Tutorial3.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 7/7/22.
//

import SwiftUI

@MainActor class DelayedUpdater: ObservableObject {
    var value = 0 {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        for i in 1...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.value += 1
            }
        }
    }
}

struct Tutorial3: View {
    @StateObject private var updater = DelayedUpdater()
    
    var body: some View {
        VStack {
            Text("Value is \(updater.value)")
        }
        .navigationBarTitle("Tutorial 3")
    }
}

struct Tutorial3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
