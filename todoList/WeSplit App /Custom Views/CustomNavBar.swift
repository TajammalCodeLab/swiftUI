//
//  CustomNavBar.swift
//  todoList
//
//  Created by SID on 25/12/2024.
//

import SwiftUI

struct CustomNavBar<Content: View>: View {
    
    @Environment(\.dismiss) var dismiss
    var title: String
    var content: Content
    @State var Yoffset: CGFloat = 0
    
    init(title: String,@ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    customNavBarButton
                }
            })
            .toolbar(content: {
                ToolbarItem(placement: .navigation) {
                    Text(title)
                }
            })
    }
    
    
    
    private var customNavBarButton: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: "chevron.left")
                .frame(width: 40, height: 40)
                .background(.ultraThinMaterial, in: .circle)
        }
        
    }
}

#Preview {
    WeSplit()
}
