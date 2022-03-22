//
//  Tutorial4.swift
//  CoreDataTutorials
//
//  Created by Alberto Landi Cortiñas on 3/14/22.
//

import SwiftUI

struct Tutorial4: View {
    
    @Environment(\.managedObjectContext) var moc

    @FetchRequest(sortDescriptors: []) var wizards: FetchedResults<Wizard>
    
    var body: some View {
        VStack {
            List(wizards, id: \.self) { wizard in
                Text(wizard.name ?? "Unknown")
            }
            
            Button("Add") {
                let wizard = Wizard(context: moc)
                wizard.name = "Harry Potter"
            }
            .buttonStyle(.bordered)
            .padding(.top)
            
            Button("Save") {
                do {
                    try moc.save()
                } catch {
                    print(error.localizedDescription)
                }
            }
            .buttonStyle(.bordered)
            .padding(.bottom)
        }
        .navigationBarTitle("Ensuring Core Data objects are unique using constraints", displayMode: .inline)
    }
}

struct Tutorial4_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial4()
    }
}
