//
//  CalendarViewModel.swift
//  TodoList
//
//  Created by Korisnik on 29/11/2019.
//  Copyright © 2019 feelmorelabs. All rights reserved.
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
