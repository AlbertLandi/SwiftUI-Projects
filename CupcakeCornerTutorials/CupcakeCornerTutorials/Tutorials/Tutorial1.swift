//
//  Tutorial1.swift
//  CupcakeCornerTutorials
//
//  Created by Alberto Landi Cortiñas on 3/9/22.
//

import SwiftUI


class User: ObservableObject, Codable {
    enum CodingKeys: CodingKey {
        case name
    }
    
    @Published var name = "Alberto Landi"
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}


struct Tutorial1: View {
    var body: some View {
        Text("Tutorial 1")
    }
}

struct Tutorial1_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial1()
    }
}
