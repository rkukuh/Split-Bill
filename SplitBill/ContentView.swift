//
//  ContentView.swift
//  SplitBill
//
//  Created by R. Kukuh on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Text("Hello, world!")
                Text("Hello, world!")
                
                Section {
                    Text("Hello, world!")
                }
                
                Section(header: Text("Preferences")) {
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
            }
            .navigationTitle("User Form")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
