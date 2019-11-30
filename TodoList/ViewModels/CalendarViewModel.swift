//
//  CalendarViewModel.swift
//  TodoList
//
//  Created by Josip Rezić on 29/11/2019.
//  Copyright © 2019 Josip Rezić. All rights reserved.
//

import Foundation

struct CalendarViewModel {
    
    var currentDayIndex: UUID?
    
    var days = AppStorage.days
    
    var listTasks: [Task] {
        let currentDay = days.first { $0.id == currentDayIndex ?? days.first!.id }
        return currentDay?.tasks ?? []
    }
}
