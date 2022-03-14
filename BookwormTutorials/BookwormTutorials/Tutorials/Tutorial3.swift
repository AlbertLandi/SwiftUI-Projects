//
//  Tutorial3.swift
//  BookwormTutorials
//
//  Created by Alberto Landi Cortiñas on 3/12/22.
//

import SwiftUI



struct Tutorial3: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    
    var body: some View {
        NavigationView {
            VStack {
                List(students) { student in
                    Text(student.name ?? "Unknown")
                }
                
                Button("Add") {
                    let firstNames = ["Alberto", "Harry", "Ron", "Hermione", "Luis"]
                    let lastNames = ["Landi", "Potter", "Weasley", "Lovegood", "Ramirez"]
                    
                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!
                    
                    let student = Student(context: moc)
                    student.id = UUID()
                    student.name = "\(chosenFirstName) \(chosenLastName)"
                    
                    try? moc.save()
                }
            }
        }
        .navigationTitle("How to combine Core Data and SwiftUI")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Tutorial3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
