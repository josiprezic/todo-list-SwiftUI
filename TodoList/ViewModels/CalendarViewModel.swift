//
//  CalendarViewModel.swift
//  TodoList
//
//  Created by Korisnik on 29/11/2019.
//  Copyright © 2019 feelmorelabs. All rights reserved.
//

import Foundation

struct CalendarViewModel {
    
    var days: [Day] = [
        Day(text:"Monday", tasks: Task.testTasks1),
        Day(text:"Tuesday", tasks: Task.testTasks2),
        Day(text:"Wednesday", tasks: Task.testTasks3),
        Day(text:"Thursday", tasks: Task.testTasks1),
        Day(text:"Friday", tasks: Task.testTasks2),
        Day(text:"Saturday", tasks: Task.testTasks3),
        Day(text:"Sunday", tasks: Task.testTasks1),
        Day(text:"Monday", tasks: Task.testTasks2),
        Day(text:"Tuesday", tasks: Task.testTasks3)
    ]
    
    var listTasks: [Task] = [
        Task(title: "Task 1"),
        Task(title: "Task 2")
    ]
}
