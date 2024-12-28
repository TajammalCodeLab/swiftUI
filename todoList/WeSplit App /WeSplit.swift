//
//  WeSplit.swift
//  todoList
//
//  Created by SID on 25/12/2024.
//

import SwiftUI

struct WeSplit: View {
    @State var selectedTab: Tabs = .contact
    
    @State var countNumber: Int = 0
    @State var name: String = ""
    
    let students = ["Ali","Taha","Atif","Sid","Siddiq"]
    
    @State var defualtSelectedname: String = "Siddiq"
    
    var body: some View {
        NavigationStack {
            Form {
                NavigationLink(destination: AboutPhone()) {
                    Text("About Phone")
                }
                Text("Software Updates")
                Text("Contact Us")
                
                Section{
                    Text("Software Updates")
                    Text("Software Information")
                }
                
                Section("Video # 4"){
                    Button {
                        countNumber += 1
                    } label:{
                        HStack{
                            Image(systemName: "arrow.2.circlepath.circle")
                            Text("Increment")
                        }
                    }
                    Text("Tapped Counr: \(countNumber)")
                }
                Section("Video # 5"){
                    TextField("Enter Your Name", text: $name)
                    Text("Your name is: \(name)")
                }
                
                Section("Video # 6"){
                    ForEach(1..<10){ number in
                        Text("\(number)")
                        
                        
                    }
                }
                Section("Video # 7"){
                    Picker("", selection: $defualtSelectedname){
                     ForEach(students, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationTitle("SwiftUI")
            .foregroundStyle(.primary)
            
        }
        
        CustomTabBar(selectedTab: $selectedTab)
    }
    
}

#Preview {
    WeSplit()
}
