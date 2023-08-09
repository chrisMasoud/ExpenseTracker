//
//  ViewModel.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/9/23.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var list = [Transaction(id: UUID(), name: "Flight to Paris", amount: 523, type: "Expense", category: "Travel"),                       Transaction(id: UUID(), name: "McDonald's", amount: 17, type: "Expense", category: "Food"),
                           Transaction(id: UUID(), name: "Salary", amount: 1265, type: "Income", category: "Pay"),
                           Transaction(id: UUID(), name: "Clothes", amount: 175, type: "Expense", category: "Shopping"),
                           Transaction(id: UUID(), name: "Rent", amount: 2000, type: "Expense", category: "Rent")]
}
