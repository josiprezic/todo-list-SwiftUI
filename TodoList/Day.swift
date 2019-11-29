//
//  Day.swift
//  TodoList
//
//  Created by Korisnik on 29/11/2019.
//  Copyright © 2019 feelmorelabs. All rights reserved.
//

import Foundation

struct Day: Identifiable {
    let id = UUID()
    let text: String
    let tasks: [Task]
}
