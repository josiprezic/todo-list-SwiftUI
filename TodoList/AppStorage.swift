//
//  AppStorage.swift
//  TodoList
//
//  Created by Korisnik on 30/11/2019.
//  Copyright © 2019 feelmorelabs. All rights reserved.
//

import Foundation

struct AppStorage {
    
    static var days: [Day] {
        var result: [Day] = []
        for offset in 0...365 {
            let dayDate = Date.day(withOffset: offset)
            let dayName = dayDate.dayInWeek
            let tasks = AppStorage.tasks(for: dayDate)
            result.append(Day(text: dayName, tasks: tasks))
        }
        return result
    }
    
    static var tasks = [
        Task(date: Date.day(withOffset: 0), title: "Task 1"),
        Task(date: Date.day(withOffset: 1), title: "Task 2"),
        Task(date: Date.day(withOffset: 2), title: "Task 3"),
        Task(date: Date.day(withOffset: 3), title: "Task 4"),
        Task(date: Date.day(withOffset: 0), title: "Task 5"),
        Task(date: Date.day(withOffset: 1), title: "Task 6"),
        Task(date: Date.day(withOffset: 2), title: "Task 7"),
        Task(date: Date.day(withOffset: 3), title: "Task 8"),
        Task(date: Date.day(withOffset: 0), title: "Task 9"),
        Task(date: Date.day(withOffset: 0), title: "Task 10")
    ]
    
    static func tasks(for date: Date = Date()) -> [Task] {
        return tasks.filter {
            $0.date.day == date.day &&
                $0.date.month == date.month &&
                $0.date.year == date.year
        }
    }
}
