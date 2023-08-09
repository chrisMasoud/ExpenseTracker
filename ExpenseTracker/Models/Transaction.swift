//
//  Item.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/3/23.
//

import Foundation
import SwiftData

@Model
final class Transaction {
    var timestamp: Date
    var name: String
    var amount: Double
    var type: String
    var category: String
    
    init(timestamp: Date, name: String, amount: Double, type: String, category: String) {
        self.timestamp = timestamp
        self.name = name
        self.amount = amount
        self.type = type
        self.category = category
    }
}
