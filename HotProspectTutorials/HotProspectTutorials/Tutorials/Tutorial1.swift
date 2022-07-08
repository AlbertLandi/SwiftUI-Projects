//
//  Tutorial1.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 6/9/22.
//

import SwiftUI

@MainActor class User: ObservableObject {
    @Published var name = "John Price"
}

struct EditView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        TextField("Name", text: $user.name)
    }
}

struct DisplayView: View {
    @EnvironmentObject var user: User

    var body: some View {
        Text(user.name)
    }
}

struct Tutorial1: View {
    @StateObject private var user = User()
    
    var body: some View {
        VStack {
            EditView()
            DisplayView()
        }
        .environmentObject(user)
        .navigationBarTitle("Tutorial 1")
    }
}

struct Tutorial1_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial1()
    }
}
