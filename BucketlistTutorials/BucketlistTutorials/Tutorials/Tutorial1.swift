//
//  Tutorial1.swift
//  BucketlistTutorials
//
//  Created by Alberto Landi Cortiñas on 5/15/22.
//

import SwiftUI

struct User: Identifiable, Comparable {
    let id = UUID()
    let firstName: String
    let lastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct Tutorial1: View {
    
    
    let values = [1, 5, 3, 6, 2, 9].sorted()
    
    let users = [
        User(firstName: "John", lastName: "Price"),
        User(firstName: "John", lastName: "McTavish"),
        User(firstName: "Simon", lastName: "Riley"),
        User(firstName: "Kyle", lastName: "Garrick"),
        User(firstName: "Gary", lastName: "Sanderson")
    ].sorted()
    
    var body: some View {
        List {
            Section(header: Text("Numbers")) {
                ForEach(values, id: \.self) {
                    Text(String($0))
                }
            }
            
            Section(header: Text("Users")) {
                ForEach(users) { user in
                    Text("\(user.firstName) \(user.lastName)")
                }
            }
        }
        .navigationBarTitle("Tutorial 1")
    }
}

struct Tutorial1_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial1()
    }
}
