//
//  Tutorial1.swift
//  CoreDataTutorials
//
//  Created by Alberto Landi Cortiñas on 3/14/22.
//

import SwiftUI

struct Student: Hashable {
    let name: String
}

struct Tutorial1: View {
    let students = [
        Student(name: "Simon 'Ghost' Riley"),
        Student(name: "John Price"),
        Student(name: "John 'Soap' MacTavish")]
    
    var body: some View {
        VStack {
            List {
                ForEach(students, id: \.self) { student in
                    Text(student.name)
                }
            }
            
        }
        .navigationBarTitle("Why does 'backslash dot self' work for ForEach?", displayMode: .inline)
    }
}

struct Tutorial1_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial1()
    }
}
