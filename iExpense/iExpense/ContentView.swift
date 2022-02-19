//
//  ContentView.swift
//  iExpense
//
//  Created by Alberto Landi Cortiñas on 2/15/22.
//

import SwiftUI

/*Tutorial 1 and 2
class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}
*/

/*Tutorial 3
struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    let name: String
    
    var body: some View {
        Text("Hello, \(name)!")
        Button("Dismiss") {
            dismiss()
        }
    }
}
*/

//Tutorial 6
struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    //@StateObject var user = User()
    
    //@State private var showingSheet = false

    //@State private var numbers = [Int]()
    //@State private var currentNumber = 1
    
    //@AppStorage("tapCount") private var tapCount = 0
    
    @State private var user = User(firstName: "Landi", lastName: "Alberto")
    
    var body: some View {
        
        //Tutorial 6
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
        
        
        
        /*Tutorial 5
        Button("Tap count: \(tapCount)") {
            tapCount += 1
        }
        */
        
        /*Tutorial 4
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("On Delete()")
            .toolbar {
                EditButton()
            }
        }
        
        */
        
        /*Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@AlbertLandi")
        }
        */
        
        /*tutorial 1 and 2
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        */
    }
    
    /*Tutorial 4
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
    */
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
