//
//  AddForm.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/9/23.
//

import Foundation
import SwiftUI

struct AddForm: View {
    
    @State private var name = ""
    @State private var amount = 0.0
    @State private var type = 0
    @State private var category = 0
    let types = ["Income", "Expense"]
    let categories = ["Food", "Rent", "Travel", "Pay", "Shopping", "Entertainment"]
    
    var body: some View {
        
        VStack {
            
            TextField("Name", text: $name)
            TextField("Amount", text: $name)
            Picker(selection: $type, label: Text("Type")) {
                ForEach(0 ..< 2) {
                    let t = types[$0]
                    Text("\(t)")
                }
            }
            Picker(selection: $category, label: Text("Category")) {
                ForEach(0 ..< 6) {
                    let c = categories[$0]
                    Text("\(c)")
                }
            }
            
        }
        
    }
    
}

#Preview {
    AddForm()
}
