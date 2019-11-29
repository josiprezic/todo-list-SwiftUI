//
//  DayView.swift
//  TodoList
//
//  Created by Korisnik on 29/11/2019.
//  Copyright © 2019 feelmorelabs. All rights reserved.
//

import SwiftUI

struct DayView: View {
    let day: Day
    
    var body: some View {
        Text(day.text)
            .frame(width: 110, height: 150)
            .background(Color.blue)
            .foregroundColor(Color.red)
            .cornerRadius(10)
    }
}


struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: Day(text: "", tasks: []))
    }
}
