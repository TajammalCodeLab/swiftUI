//
//  ContentView.swift
//  todoList
//
//  Created by SID on 19/12/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("tasks") private var taskData: Data = Data()
    @State private var tasks: [Task] = []
    @State private var selectedTask: Task? = nil
    
    var body: some View {
        NavigationView {
            Group {
                if tasks.isEmpty {
                    VStack {
                        Text("No tasks available")
                            .font(.title)
                            .foregroundColor(.gray)
                            .padding()
                        
                        Text("Tap the '+' button to add your first task.")
                            .font(.body)
                            .foregroundColor(.secondary)
                    }
                    .multilineTextAlignment(.center)
                    .padding()
                } else {
                    List {
                        ForEach($tasks) { $task in
                            VStack(alignment: .leading) {
                                HStack {
                                    Button(action: {
                                        task.isCompleted.toggle()
                                        saveTasks()
                                    }) {
                                        Image(systemName: task.isCompleted ? "checkmark.square" : "square")
                                            .resizable()
                                            .frame(width: 24, height: 24)
                                            .foregroundColor(task.isCompleted ? .green : .gray)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    
                                    Text(task.title)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                }
                                Text(task.description)
                                    .lineLimit(2)
                                    .fontWeight(.thin)
                            }
                            .onTapGesture {
                                selectedTask = task
                            }
                        }
                    }
                    .listStyle(InsetListStyle())
                }
            }
            .navigationTitle("To-Do List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AddTaskView(onSave: addTask)) {
                        Image(systemName: "plus")
                    }
                }
            }
            .onAppear(perform: loadTasks)
            .sheet(item: $selectedTask) { task in
                TaskDetailView(task: task)
            }
        }
    }
    
    // MARK: methods
    private func addTask(_ task: Task) {
        tasks.append(task)
        saveTasks()
    }
    
    private func saveTasks() {
        if let encodedData = try? JSONEncoder().encode(tasks) {
            taskData = encodedData
        }
    }
    
    private func loadTasks() {
        if let decodedData = try? JSONDecoder().decode([Task].self, from: taskData) {
            tasks = decodedData
        }
    }
}

#Preview {
    ContentView()
}
