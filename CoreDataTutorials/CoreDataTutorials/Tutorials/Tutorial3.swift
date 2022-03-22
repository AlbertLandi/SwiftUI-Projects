//
//  Tutorial3.swift
//  CoreDataTutorials
//
//  Created by Alberto Landi Cortiñas on 3/14/22.
//

import SwiftUI

struct Tutorial3: View {
    @Environment(\.managedObjectContext) var moc
    
    let text = """
    every managed object is given a hasChanges property, that is true when the object has unsaved changes. And, the entire context also contains a hasChanges property that checks whether any object owned by the context has changes.

    So, rather than call save() directly you should always wrap it in a check first, like this:

    if moc.hasChanges {
        try? moc.save()
    }

    It’s a small change to make, but it matters – there’s no point doing work that isn’t needed, no matter how small, particularly because if you do enough small work you realize you’ve stacked up some big work.

"""
    var body: some View {
        VStack {
            Text(text)
                .padding()
            
            Button("Save") {
                if moc.hasChanges {
                    try? moc.save()
                }
            }
            .padding()
            .buttonStyle(.bordered)
            .controlSize(.large)
            
        }
        .navigationBarTitle("Conditional saving of NSManagedObjectContext", displayMode: .inline)
    }
}

struct Tutorial3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
