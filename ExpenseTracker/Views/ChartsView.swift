//
//  ChartsView.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/14/23.
//

import Charts
import Foundation
import SwiftUI

struct ChartsView: View {
    @ObservedObject var model = ViewModel()
    var pieData = [
        DataPoint(
            amount: 12421),
        DataPoint(
            amount: 42500,
            type: "Income"),
    ]

    var body: some View {
        VStack {
            Text("Current Balance")
                .font(.title)
                .foregroundStyle(.accent)
            
            Chart {
                ForEach(pieData) { item in
                    SectorMark(angle: .value("Amount", item.amount),
                               innerRadius: .ratio(0.6),
                               angularInset: 1)
                        .cornerRadius(10)
                        .foregroundStyle(item.type == "Expense" ? .red : .green)
                }
            }
            .padding()
            .chartBackground { _ in
                Text("$32,465")
                    .font(.title2)
                    .foregroundStyle(.accent)
            }
            
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(.main)
            
            Text("Weekly Spending")
                .font(.title)
                .foregroundStyle(.accent)
            
            Chart {
                ForEach(model.list) { item in
                    BarMark(x: .value("Date", item.date),
                            y: .value("Amount", item.amount))
                }
            }
            .padding()
            .chartXAxis(.hidden)
            .chartXAxisLabel {
                Text("Days of the Week")
                    .position(CGPoint(x: 180.0, y: 10.0))
            }
            
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(.main)
            
            Chart {
                ForEach(model.list) { item in
                    LineMark(x: .value("Date", item.date),
                            y: .value("Amount", item.amount))
                }
            }
            .padding()
            .chartXAxis(.hidden)
            .chartXAxisLabel {
                Text("Days of the Week")
                    .position(CGPoint(x: 180.0, y: 10.0))
            }
        }
    }
}

#Preview {
    ChartsView()
}
