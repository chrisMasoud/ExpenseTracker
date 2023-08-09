//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Chris Masoud on 8/3/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        TabView {
            AddForm()
                .tabItem {
                    Label("Add Transaction", systemImage: "plus.rectangle.fill")
                }
        }
    }

}

#Preview {
    ContentView()
}
