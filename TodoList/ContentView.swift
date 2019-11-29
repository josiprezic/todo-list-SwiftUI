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

struct Task: Identifiable {
    let id = UUID()
    let title: String
    let description: String = ""
}

struct ContentView: View {
    
    var days: [Day] = [
        Day(text:"Monday"),
        Day(text:"Tuesday"),
        Day(text:"Wednesday"),
        Day(text:"Thursday"),
        Day(text:"Friday"),
        Day(text:"Saturday"),
        Day(text:"Sunday"),
        Day(text:"Monday"),
        Day(text:"Tuesday"),
    ]
    
    var tasks: [Task] = [
        Task(title: "Task 1"),
        Task(title: "Task 2"),
        Task(title: "Task 3"),
        Task(title: "Task 4"),
        Task(title: "Task 5"),
        Task(title: "Task 6"),
        Task(title: "Task 7"),
        Task(title: "Task 8"),
        Task(title: "Task 9"),
        Task(title: "Task 10"),
        Task(title: "Task 11"),
        Task(title: "Task 12"),
        Task(title: "Task 13"),
        Task(title: "Task 14"),
        Task(title: "Task 15"),
        Task(title: "Task 16"),
        Task(title: "Task 17"),
        Task(title: "Task 18"),
        Task(title: "Task 19")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    
                    Text("Days")
                        .padding(.leading, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(days) { day in
                                Button(action: {
                                    print("TEST")
                                }) {
                                    DayView(day: day)
                                }
                            }
                        }
                    }
                    .frame(height: 150.0)
                    .background(Color.green)
                }
                
                List {
                    ForEach(tasks) { task in
                        NavigationLink(destination: DetailView()) {
                            TaskView(task: task)
                        }
                    }
                }
                .navigationBarTitle(Text("Todo list"))
                .padding(.leading, -15)
                .padding(.trailing, -15)
            }
        }
    }
}

struct TaskView: View {
    
    let task: Task
    
    var body: some View {
        Text(task.title)
    }
}

struct DayView: View {
    let day: Day
    
    var body: some View {
        Text(day.text)
            .frame(width: 100, height: 130)
            .background(Color.blue)
            .foregroundColor(Color.red)
            .cornerRadius(10)
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
