//
//  AddTaskView.swift
//  todoList
//
//  Created by SID on 19/12/2024.
//


import SwiftUI

struct AddTaskView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var title: String = ""
    @State private var description: String = ""
    
    let onSave: (Task) -> Void

    var body: some View {
        VStack{
            TextField("Title", text: $title)
                .font(.title)
                .fontWeight(.heavy)
            Divider()
            TextField("Description", text: $description, axis: .vertical)
                .lineLimit(5...)
            
            Spacer()
            
            Button(action: saveTask) {
                Text("Save Task")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .disabled(title.isEmpty)
        }
        .padding()
    }

    private func saveTask() {
        let newTask = Task(title: title, description: description, isCompleted: false)
        onSave(newTask)
        presentationMode.wrappedValue.dismiss()
    }
}
#Preview {
    ContentView()
}
