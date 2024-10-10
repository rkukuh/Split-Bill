//
//  ContentView.swift
//  SplitBill
//
//  Created by R. Kukuh on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: name)
        }
    }
}

#Preview {
    ContentView()
}
