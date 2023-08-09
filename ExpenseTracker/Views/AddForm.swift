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
    @State private var amount = ""
    @State private var type = 0
    @State private var category = 0
    let types = ["Income", "Expense"]
    let categories = ["Food", "Rent", "Travel", "Pay", "Shopping", "Entertainment"]
    
    var body: some View {
        
        VStack(spacing: 20) {

            TextField("Name", text: $name)
                .font(.title3)
            
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(.accent)
            
            TextField("Amount", text: $amount)
                .font(.title3)
            
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(.accent)
            
            HStack {
                Text("Type")
                    .font(.title3)
                    .foregroundStyle(.accent)
                Spacer()
                Picker(selection: $type, label: Text("Type")) {
                    ForEach(0 ..< 2) {
                        let t = types[$0]
                        Text("\(t)")
                    }
                }
            }
            .padding(.bottom, 1)
            
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(.accent)
            
            HStack {
                Text("Category")
                    .font(.title3)
                    .foregroundStyle(.accent)
                Spacer()
                Picker(selection: $category, label: Text("Category")) {
                    ForEach(0 ..< 6) {
                        let c = categories[$0]
                        Text("\(c)")
                    }
                }
            }
            .padding(.bottom, 1)
            
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(.accent)

            Button(action: {
                print("Add Button Clicked")
            }, label: {
                Text("Add Record")
                    .frame(width: 360, height: 80)
                    .background(.main)
                    .font(.title2)
                    .foregroundColor(.white)
            })
            
        }
        .padding()
        .frame(height: 800)
        .background(.offWhite)
        
    }
        
    
}

#Preview {
    AddForm()
}
