//
//  Date.swift
//  TodoList
//
//  Created by Josip Rezić on 30/11/2019.
//  Copyright © 2019 Josip Rezić. All rights reserved.
//

import Foundation

extension Date {
    
    var month: Int {
        return Calendar.current.component(.month,  from: self)
    }
    
    var day: Int {
        return Calendar.current.component(.day,  from: self)
    }
    
    var year: Int {
        return Calendar.current.component(.year,  from: self)
    }
    
    static var noon: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: Date())!
    }
    
    static func day(withOffset offset: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: offset, to: noon)!
    }
    
    var dayInWeek: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
