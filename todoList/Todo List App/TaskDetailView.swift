//
//  TaskDetailView.swift
//  todoList
//
//  Created by SID on 19/12/2024.
//


import SwiftUI

struct TaskDetailView: View {
    let task: Task

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(task.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Divider()
            Text(task.description)
                .font(.body)
                .foregroundColor(.secondary)

            Spacer()
        }
        .padding()
        .presentationDetents([.medium, .large])
    }
}

#Preview {
    ContentView()
}
