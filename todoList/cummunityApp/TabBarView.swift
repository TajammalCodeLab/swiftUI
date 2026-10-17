//
//  TabBarView.swift
//  todoList
//
//  Created by SID on 02/01/2025.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        content
    }
}


extension TabBarView{
    @ViewBuilder
    var content: some View{
        VStack{
            HStack(spacing: 20){
                VStack(spacing: 0){
                    Image("home")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(.red)
                        .frame(width: 23, height: 23)
                        
                    Text("Home")
                        .fontWeight(.semibold)
                        .font(.caption)
                }
                VStack(spacing: 0){
                    Image(.sun)
                        .foregroundStyle(.red)
                    Text("Feed")
                        .fontWeight(.semibold)
                        .font(.caption)
                }
                VStack(spacing: 0){
                    Image(.search)
                        .foregroundColor(.red)
                    Text("Explore")
                        .fontWeight(.semibold)
                        .font(.caption)
                }
                VStack(spacing: 0){
                    Image(.highlights)
                    Text("Highlights")
                        .fontWeight(.semibold)
                        .font(.caption)
                }
                VStack(spacing: 0){
                    Image(.profile)
                    Text("Profile")
                        .fontWeight(.semibold)
                        .font(.caption)
                }
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
        }
        .background(.blue.opacity(0.1))
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    TabBarView()
}
