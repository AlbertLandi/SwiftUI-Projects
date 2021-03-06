//
//  ContentView.swift
//  WeSplit
//
//  Created by Alberto Landi Cortiñas on 10/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var results: Array<Double> {
        let peopleCount = Double(numberOfPeople)
        let tipSelection = Double(tipPercentages[tipPercentage])
        
        let orderAmount = Double(checkAmount) ?? 0
        
        
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal =  orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return [amountPerPerson, grandTotal]
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    TextField("Number of people:", value: $numberOfPeople, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                    /*Picker("Number of people:", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }*/
                }
                
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Amount per person")) {
                    Text("$\(results[0], specifier: "%.2f")")
                }
                
                Section(header: Text("Total amount for the check")) {
                    Text("$\(results[1], specifier: "%.2f")")
                }
            }
            .navigationBarTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
