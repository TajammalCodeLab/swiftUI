//
//  WeSplit.swift
//  todoList
//
//  Created by SID on 25/12/2024.
//

import SwiftUI

struct WeSplit: View {
    var body: some View {
        NavigationStack {
            Form{
                NavigationLink(destination: AboutPhone()) {
                    Text("About Phone")
                }
                Text("Software Updates")
                Text("Software Information")
                Text("Contact Us")
            }
        }
    }
}

#Preview {
    WeSplit()
}
