//
//  Tutorial3.swift
//  CupcakeCornerTutorials
//
//  Created by Alberto Landi Cortiñas on 3/9/22.
//

import SwiftUI

struct Tutorial3: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Correct URL")
                    .font(.headline)
                AsyncImage(url: URL(string: "https://www.hackingwithswift.com/img/logo-curves-ua.svg")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(width:200, height: 200)
                
                Text("Bad URL")
                    .font(.headline)
                AsyncImage(url: URL(string: "https://www.hackingwithswift.com/img/bad.svg")) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                    } else if phase.error != nil {
                        Text("There was an error loading this image.")
                    } else {
                        ProgressView()
                    }
                }
                .frame(width:200, height: 200)
            }
            .navigationTitle("Tutorial 3")
        }
    }
}

struct Tutorial3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
