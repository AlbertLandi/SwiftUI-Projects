//
//  ExpenseItem.swift
//  iExpenses
//
//  Created by Alberto Landi Cortiñas on 2/15/22.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
