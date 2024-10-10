//
//  ContentView.swift
//  SplitBill
//
//  Created by R. Kukuh on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    let students = ["Amel", "Bern", "Cid"]
    
    @State private var selectedStudent = "Bern"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) { student in
                        Text(student)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
