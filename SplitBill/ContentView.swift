//
//  ContentView.swift
//  SplitBill
//
//  Created by R. Kukuh on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount",
                              value: $checkAmount,
                              format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                    )
                    .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 11) { personCount in
                            Text("\(personCount) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section {
                    Text("How much tip do you want to leave?")
                    
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) { tipPercentage in
                            Text(tipPercentage, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Text("Payment amount:")
                Text(checkAmount,
                     format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
            .navigationTitle("SplitBill")
        }
    }
}

#Preview {
    ContentView()
}
