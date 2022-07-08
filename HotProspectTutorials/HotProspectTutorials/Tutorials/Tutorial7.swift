//
//  Tutorial7.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 7/8/22.
//

import SwiftUI

struct Tutorial7: View {
    var body: some View {
        VStack {
            List {
                Text("Message")
                    .swipeActions {
                        Button {
                            print("Hi")
                        } label: {
                            Label("Send message", systemImage: "message")
                        }
                    }
                
                Text("Pin and Delete")
                    .swipeActions {
                        Button(role: .destructive) {
                            print("Hi")
                        } label: {
                            Label("Delete", systemImage: "minus.circle")
                        }
                    }
                    .swipeActions(edge: .leading) {
                        Button {
                            print("Hi")
                        } label: {
                            Label("Pin", systemImage: "pin")
                        }
                        .tint(.orange)
                    }
            }
        }
        .navigationBarTitle("Tutorial 7")
    }
}

struct Tutorial7_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial7()
    }
}
