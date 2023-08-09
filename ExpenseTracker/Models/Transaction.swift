//
//  Item.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/3/23.
//

import Foundation
import SwiftData


struct Transaction: Identifiable {
    var id: UUID
    var name: String
    var amount: Double
    var type: String
    var category: String
}
