//
//  TaskView.swift
//  todoList
//
//  Created by SID on 28/12/2024.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        content
    }
    
    //MARK: Variables
    @State var searchText: String = ""
    
}

#Preview {
    TaskView()
}

extension TaskView{
    
    @ViewBuilder
    var content: some View{
        TopBar
        SegmentCntroll
        SearchBar
        AllTaskScroll
        CustomTabBar(selectedTab: .constant(.contact))
        
    }
    
    // MARK: TopBar
    @ViewBuilder
    private var TopBar: some View{
        HStack{
            Spacer()
            Text("All Tasks")
                .italic()
                .fontWeight(.medium)
                .font(.system(size: 20))
            
            Spacer()
                .frame(width: 80)
            Button(action: {
                
            }){
                Text("Request")
                    .underline(true)
                    .foregroundColor(.red)
            }
        }.padding(.trailing)
    }
    
    // MARK: Segment Controll
    @ViewBuilder
    private var SegmentCntroll: some View{
        SegmentControllView()
    }
    
    // MARK: Search Bar
    @ViewBuilder
    private var SearchBar: some View{
        HStack{
            Button(action: {
            })
            {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.leading)
                    .foregroundColor(.red)
            }
            TextField("Search", text: $searchText)
                .padding()
            
        }//Hstack
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .padding()
        
    }//View
    // MARK: Active Tasks
    @ViewBuilder
    private var AllTaskScroll: some View{
        ScrollView{
            AllTaskScrollView(details: MaintenanceDetails(
                make: "Toyota Camry (2020)",
                roNumber: "70990",
                vin: "70990",
                warningLights: "Yes",
                insurance: "No",
                malfunction: "No"
            ))
        }
    }
}// Extension
