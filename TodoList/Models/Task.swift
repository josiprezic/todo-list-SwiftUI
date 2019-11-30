//
//  Task.swift
//  TodoList
//
//  Created by Korisnik on 29/11/2019.
//  Copyright © 2019 feelmorelabs. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let title: String
    let description: String = ""
    var finished: Bool = false
    
    
    static var testTasks1 = [
        Task(title: "Task 4"),
        Task(title: "Task 5"),
        Task(title: "Task 6"),
        Task(title: "Task 7"),
        Task(title: "Task 8"),
    ]
    
    static var testTasks2 = [
        Task(title: "Task 2"),
        Task(title: "Task 9"),
        Task(title: "Task 10")
    ]
    
    static var testTasks3 = [
        Task(title: "Task 1"),
        Task(title: "Task 2"),
        Task(title: "Task 3"),
        Task(title: "Task 4"),
        Task(title: "Task 5")
    ]
}
