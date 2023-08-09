//
//  ViewModel.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/9/23.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var list = [Transaction(id: UUID(), name: "Flight to Paris", amount: 523, type: "Expense", category: "Travel", date: "July 12 at 9:30PM"),                       Transaction(id: UUID(), name: "McDonald's", amount: 17, type: "Expense", category: "Food", date: "July 19 at 9:30PM"),
                           Transaction(id: UUID(), name: "Cable", amount: 70, type: "Expense", category: "Bills", date: "July 19 at 10:00PM"),
                           Transaction(id: UUID(), name: "Clothes", amount: 175, type: "Expense", category: "Shopping", date: "July 26 at 7:15AM"),
                           Transaction(id: UUID(), name: "Rent", amount: 2000, type: "Expense", category: "Rent", date: "July 27 at 6:30AM")]
}
