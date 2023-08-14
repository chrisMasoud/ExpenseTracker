//
//  DataPoint.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/14/23.
//

import Foundation

struct DataPoint: Identifiable {
    var id = UUID().uuidString
    var amount: Int
    var type: String = "Expense"
}
