//
//  HomeView.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/9/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @ObservedObject var model = ViewModel()

    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Current Balance")
                    .foregroundStyle(.white)
                    .font(.title2)
                
                Text("$32,465")
                    .foregroundStyle(.white)
                    .font(.system(size: 60))
                    .bold()
                
                Text("August 2023")
                    .foregroundStyle(.white)
                    .font(.headline)
            }
            .padding(.bottom, 25)
            
            

            HStack {
                Image(systemName: "arrow.down.left")
                Text("Income")
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "arrow.up.right")
                Text("Expense")
                    .foregroundStyle(.white)
            }
            HStack {
                Text("$42,500")
                    .foregroundStyle(.white)
                Spacer()
                Text("$12,421")
                    .foregroundStyle(.white)
            }
        }
        .padding()
        .background(.accent)

        List(model.list) { item in
            ListItem(item: item)
        }
        .listRowSpacing(20)
    }
}

#Preview {
    HomeView()
}
