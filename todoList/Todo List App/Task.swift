//
//  Task.swift
//  todoList
//
//  Created by SID on 19/12/2024.
//


import Foundation

struct Task: Identifiable, Codable {
    var id: UUID = UUID()
    var title: String
    var description: String
    var isCompleted: Bool = false
}
