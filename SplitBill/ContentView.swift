//
//  ContentView.swift
//  SplitBill
//
//  Created by R. Kukuh on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var age: Int = 18
    @State private var receiveNewsletter: Bool = false
    
    var body: some View {
        Form {
            Text("Hello, world!")
            Text("Hello, world!")
            
            Section {
                Text("Hello, world!")
            }
            
            Section {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            
            Section(header: Text("Personal Information")) {
                TextField("Name", text: $name)
                TextField("Email", text: $email)
                Stepper(value: $age, in: 18...100) {
                    Text("Age: \(age)")
                }
            }
            
            Section(header: Text("Preferences")) {
                Toggle(isOn: $receiveNewsletter) {
                    Text("Receive Newsletter")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
