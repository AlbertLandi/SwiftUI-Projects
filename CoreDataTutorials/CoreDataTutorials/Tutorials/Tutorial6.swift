//
//  Tutorial6.swift
//  CoreDataTutorials
//
//  Created by Alberto Landi Cortiñas on 3/14/22.
//
import CoreData
import SwiftUI

struct Tutorial6: View {
    @Environment(\.managedObjectContext) var moc
    @State private var lastNameFilter = "A"
    
    var body: some View {
        VStack {
            FilteredList(filter: lastNameFilter)
            
            Button("Add Examples") {
                let taylor = Singer(context: moc)
                taylor.firstName = "Taylor"
                taylor.lastName = "Swift"
                
                let ed = Singer(context: moc)
                ed.firstName = "Ed"
                ed.lastName = "Sheeran"
                
                let adele = Singer(context: moc)
                adele.firstName = "Adele"
                adele.lastName = "Adkins"
                
                try? moc.save()
            }
            .buttonStyle(.bordered)
            
            Button("Show A") {
                lastNameFilter = "A"
            }
            .buttonStyle(.bordered)
            .padding()
            
            Button("Show S") {
                lastNameFilter = "S"
            }
            .buttonStyle(.bordered)
            
        }
        .navigationBarTitle("Dynamically filtering @FetchRequest with SwiftUI", displayMode: .inline)
    }
}

struct Tutorial6_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial6()
    }
}
