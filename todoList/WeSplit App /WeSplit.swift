//
//  WeSplit.swift
//  todoList
//
//  Created by SID on 25/12/2024.
//

import SwiftUI

struct WeSplit: View {
    @State var selectedTab: Tabs = .contact
    
    var body: some View {
        NavigationStack {
            Form{
                NavigationLink(destination: AboutPhone()) {
                    Text("About Phone")
                }
                Text("Software Updates")
                Text("Software Information")
                Text("Contact Us")
                
                Section{
                    Text("Software Updates")
                    Text("Software Information")
                    Text("Contact Us")
                }
            }
            
        }
        
        CustomTabBar(selectedTab: $selectedTab)
    }
    
}

#Preview {
    WeSplit()
}
