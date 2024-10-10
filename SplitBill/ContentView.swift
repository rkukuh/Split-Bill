//
//  ContentView.swift
//  SplitBill
//
//  Created by R. Kukuh on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            ForEach(0..<100) { number in
                Text("Row \(number)")
            }
        }
    }
}

#Preview {
    ContentView()
}
