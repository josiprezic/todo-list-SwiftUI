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
    let date: Date
    let title: String
    let description: String = ""
    var finished: Bool = false
}
