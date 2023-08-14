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
                
                ZStack {
                    Color(.white)
                        .cornerRadius(50)
                        .frame(width: 25, height: 25)
                    Image(systemName: "arrow.down.left")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.green)
                }
                
                Text("Income")
                    .foregroundStyle(.white)
                    .font(.headline)
                
                Spacer()
                
                ZStack {
                    Color(.white)
                        .cornerRadius(50)
                        .frame(width: 25, height: 25)
                    Image(systemName: "arrow.up.right")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.red)
                }
                
                Text("Expense")
                    .foregroundStyle(.white)
                    .font(.headline)
                
            }
            
            HStack {
                Text("$42,500")
                    .foregroundStyle(.white)
                    .font(.headline)
                Spacer()
                Text("$12,421")
                    .foregroundStyle(.white)
                    .font(.headline)
            }
            .padding(.horizontal)
            .padding(.bottom, 10)
            
            List(model.list) { item in
                ListItem(item: item)
            }
            .listRowSpacing(15)
            .padding(.horizontal, -20)
            .padding(.bottom, -100)
            
        }
        .padding()
        .background(.accent)

        
    }
}

#Preview {
    HomeView()
}
