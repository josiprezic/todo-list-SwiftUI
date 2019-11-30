//
//  DayView.swift
//  TodoList
//
//  Created by Josip Rezić on 29/11/2019.
//  Copyright © 2019 Josip Rezić. All rights reserved.
//

import SwiftUI

struct DayView: View {
    let day: Day
    
    var body: some View {
        ZStack {
            Image(day.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 140, height: 150)
                .clipped()
                .cornerRadius(10)
            
            Text(day.text.uppercased())
                .font(.system(size: 14, weight: .bold, design: .default))
                .frame(width: 110, height: 150, alignment: .bottom)
                .padding(.bottom, 20)
                .foregroundColor(Color.white)
        }
    }
}


struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: Day(text: "Test", tasks: []))
    }
}
