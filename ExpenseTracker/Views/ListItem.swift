//
//  ListItem.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/9/23.
//

import Foundation
import SwiftUI

struct ListItem: View {
    
    var item: Transaction
    @State private var sf = ""
    
    var body: some View {
        HStack {
            ZStack {
                Color(.main)
                    .cornerRadius(50)
                    .frame(width: 50, height: 50)
                Image(systemName: sf)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.accent)
            }
            VStack(alignment: .leading) {
                Text(item.name)
                Text(item.date)
                    .font(.footnote)
            }
            
            Spacer()
            Text("-$\(item.amount)")
                .font(.title)
                .foregroundStyle(.red)
        }
        .padding()
        .background(.offWhite)
        .onAppear {
            switch item.category {
            case "Travel":
                sf = "airplane"
            case "Shopping":
                sf = "bag.fill"
            case "Rent":
                sf = "house.fill"
            case "Food":
                sf = "fork.knife.circle.fill"
            case "Pay":
                sf = "dollarsign.circle.fill"
            case "Entertainment":
                sf = "tv.fill"
            case "Bills":
                sf = "folder.fill"
            default:
                sf = ""
            }
        }
    }
    
}

#Preview {
    ListItem(item: Transaction(id: UUID(), name: "Flight to Paris", amount: 523, type: "Expense", category: "Travel", date: "July 12 at 9:30PM"))
}
