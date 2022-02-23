//
//  Tutorial4.swift
//  MoonshotTutorials
//
//  Created by Alberto Landi Cortiñas on 2/23/22.
//

import SwiftUI

//Tutorial 4

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let municipality: String
}

struct Tutorial4: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Alberto Landi",
                "address": {
                    "street": "Ave. 11, Alto Prado",
                    "municipality": "Baruta"
                }
            }
            """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct Tutorial4_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial4()
    }
}
