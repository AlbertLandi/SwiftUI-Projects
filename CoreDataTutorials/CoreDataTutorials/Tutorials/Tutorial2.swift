//
//  Tutorial2.swift
//  CoreDataTutorials
//
//  Created by Alberto Landi Cortiñas on 3/14/22.
//

import SwiftUI

struct Tutorial2: View {
    let text = """
    Added a 'Movie' Entity to CoreDataProject, which created a Class and Properties file and used computer properties like the following just to ensure we access the optional values safely:
    
    public var wrappedTitle: String {
        title ?? "Unknown title"
    }
    """
    
    var body: some View {
        VStack {
            Text(text)
                .padding()
            Spacer()
        }
        .navigationBarTitle("Creating NSManagedObject subclasses", displayMode: .inline)
    }
}

struct Tutorial2_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial2()
    }
}
