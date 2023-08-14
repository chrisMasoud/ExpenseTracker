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
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AddForm()
                .tabItem {
                    Label("Add Transaction", systemImage: "plus.rectangle.fill")
                }
            ChartsView()
                .tabItem {
                    Label("Charts", systemImage: "chart.pie.fill")
                }
        }
    }

}

#Preview {
    ContentView()
}
