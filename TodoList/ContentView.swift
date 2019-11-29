//
//  ContentView.swift
//  TodoList
//
//  Created by Josip Rezic on 29/11/2019.
//  Copyright © 2019 feelmorelabs. All rights reserved.
//

import SwiftUI

struct Day: Identifiable {
    let id = UUID()
    let text: String
}

struct ContentView: View {
    
    
    
    var days: [Day] = [
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday"),
        Day(text:"Monday")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal, showsIndicators: true) {
                    VStack(alignment: .leading) {
                        Text("Stack title")
                        HStack {
                            Text("ScrollView").frame(width: 100, height: 180).background(Color.blue)
                            Text("ScrollView").frame(width: 100, height: 180).background(Color.blue)
                            Text("ScrollView").frame(width: 100, height: 180).background(Color.blue)
                            Text("ScrollView").frame(width: 100, height: 180).background(Color.blue)
                            Text("ScrollView").frame(width: 100, height: 180).background(Color.blue)
                            Text("ScrollView").frame(width: 100, height: 180).background(Color.blue)
                            Text("ScrollView").frame(width: 100, height: 180).background(Color.blue)
                            Text("ScrollView").frame(width: 100, height: 180).background(Color.blue)
                            Text("ScrollView").frame(width: 100, height: 180).background(Color.blue)
                        }
                    }
                }
                    
                .frame(height: 200.0)
            
                .background(Color.green)
                
                
                ForEach(days) { day in
                    NavigationLink(destination: DetailView()) {
                        Text(day.text)
                    }
                }
            }
            .navigationBarTitle(Text("Todo list"))
            .padding(0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(days: [
            Day(text:"Monday"),
            Day(text:"Monday"),
            Day(text:"Monday"),
            Day(text:"Monday"),
            Day(text:"Monday"),
            Day(text:"Monday"),
            Day(text:"Monday")
        ])
    }
}
