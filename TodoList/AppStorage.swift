//
//  AppStorage.swift
//  TodoList
//
//  Created by Josip Rezić on 30/11/2019.
//  Copyright © 2019 Josip Rezić. All rights reserved.
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
        Task(date: Date.day(withOffset: 0), title: "Task 12"),
        Task(date: Date.day(withOffset: 0), title: "Task 13"),
        Task(date: Date.day(withOffset: 0), title: "Task 14"),
        Task(date: Date.day(withOffset: 0), title: "Task 15"),
        Task(date: Date.day(withOffset: 0), title: "Task 16"),
        Task(date: Date.day(withOffset: 0), title: "Task 17"),
        Task(date: Date.day(withOffset: 0), title: "Task 18"),
        Task(date: Date.day(withOffset: 0), title: "Task 19"),
        Task(date: Date.day(withOffset: 1), title: "Task 20"),
        Task(date: Date.day(withOffset: 2), title: "Task 3"),
        Task(date: Date.day(withOffset: 3), title: "Task 4"),
        Task(date: Date.day(withOffset: 0), title: "Task 5"),
        Task(date: Date.day(withOffset: 1), title: "Task 6"),
        Task(date: Date.day(withOffset: 2), title: "Task 7"),
        Task(date: Date.day(withOffset: 3), title: "Task 8"),
        Task(date: Date.day(withOffset: 0), title: "Task 9"),
        Task(date: Date.day(withOffset: 0), title: "Task 10")
        ] {
        didSet {
            saveState()
        }
    }
    
    static func tasks(for date: Date = Date()) -> [Task] {
        return tasks.filter {
            $0.date.day == date.day &&
                $0.date.month == date.month &&
                $0.date.year == date.year
        }
    }
    
    static func saveState() {
        debugPrint("Saving new state")
        
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(tasks) {
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: "tasks")
        }
    }
    
    static func restoreState() {
        let defaults = UserDefaults.standard
        guard let restored = defaults.object(forKey: "tasks") as? Data else {
            return
        }
        
        let decoder = JSONDecoder()
        guard let decoded = try? decoder.decode([Task].self, from: restored) else {
            return
        }
        debugPrint("State restored.")
        tasks = decoded
    }
}
