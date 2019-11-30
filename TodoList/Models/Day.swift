//
//  Day.swift
//  TodoList
//
//  Created by Josip Rezić on 29/11/2019.
//  Copyright © 2019 Josip Rezić. All rights reserved.
//

import Foundation

struct Day: Identifiable {
    let imageName = "\(Int.random(in: 1...20))"
    let id = UUID()
    let text: String
    let tasks: [Task]
}
