//
//  SegmentControllView.swift
//  todoList
//
//  Created by SID on 28/12/2024.
//

import SwiftUI

struct SegmentControllView: View {
    
    @State private var selectedIndex: String = "In Progress"
    let titles: [String] = ["In Progress", "Completed", "Incomplete"]
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            ForEach(titles , id: \.self) { index in
                Button {
                    withAnimation(.easeInOut(duration: 0.3)) { // Smooth animation
                        selectedIndex = index
                    }
                } label: {
                    Text(index)
                        .font(.system(size: 14, weight: .medium))
                        //.foregroundColor(selectedIndex == index ? .white : .black)
                        .padding()
                        .frame(width: 110, height: 55)
                        //.background(selectedIndex == index ? Color.red : Color.clear)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }
                .buttonStyle(PlainButtonStyle()) // Removes default button styling
            }
        }
        .padding(8)
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

#Preview {
    SegmentControllView()
}
