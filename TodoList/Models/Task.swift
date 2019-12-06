//
//  Task.swift
//  TodoList
//
//  Created by Josip Rezić on 29/11/2019.
//  Copyright © 2019 Josip Rezić. All rights reserved.
//

import Foundation

struct Task: Identifiable, Codable {
    let id = UUID()
    let date: Date
    let title: String
    let description: String = ""
    var finished: Bool = false
    
    
    init(date: Date, title: String) {
        self.date = date
        self.title = title
    }
}
