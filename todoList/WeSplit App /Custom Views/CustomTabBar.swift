//
//  CustomTabBar.swift
//  todoList
//
//  Created by SID on 25/12/2024.
//

import SwiftUI

enum Tabs :Int{
    case home = 0
    case contact = 1
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack(spacing: 50){
            
            
            //MARK: Button 1
            Button{
                
                selectedTab = .home
                
            } label: {
                GeometryReader{ geometry in
                    if selectedTab == .home{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 64,height: 4)
                            .overlay {
                                UnevenRoundedRectangle(bottomLeadingRadius: 10, bottomTrailingRadius: 10)
                            }
                            .padding(.leading,geometry.size.width/4.5)
                    }
                    VStack(spacing: 4){
                        
                        Image(systemName: "bubble.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24)
                        Text("Home")
                            .font(.system(size: 12))
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            .tint(Color.secondary)
            
            
            //MARK: Button 2
            Button{
                
            } label: {
                VStack(spacing: 4){
                    
                    Image(systemName: "plus.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 34)
                    
                    Text("Add Contact")
                        .font(.system(size: 12))
                }
            }
            .tint(Color.secondary)
            
            
            //MARK: Button 2
            Button{
                selectedTab = .contact
            } label: {
                GeometryReader{ geometry in
                    
                    if selectedTab == .contact{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 64,height: 4)
                            .overlay {
                                UnevenRoundedRectangle(bottomLeadingRadius: 10, bottomTrailingRadius: 10)
                            }
                            .padding(.leading,geometry.size.width/4.5)
                       
                    }
                    
                    VStack(spacing: 4){
                        
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24)
                        
                        Text("Contacts")
                            .font(.system(size: 12))
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    
                }
            }
            .tint(Color.secondary)
            
            
            
            
        }
        .frame(height: 80) // hieght for Hstack
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.contact))
}

