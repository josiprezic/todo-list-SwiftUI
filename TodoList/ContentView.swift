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
    let tasks: [Task]
}

struct Task: Identifiable {
    let id = UUID()
    let title: String
    let description: String = ""
    
    
    static var testTasks1 = [
    Task(title: "Task 4"),
    Task(title: "Task 5"),
    Task(title: "Task 6"),
    Task(title: "Task 7"),
    Task(title: "Task 8"),
    ]
    
    static var testTasks2 = [
    Task(title: "Task 2"),
    Task(title: "Task 9"),
    Task(title: "Task 10")
    ]
    
    static var testTasks3 = [
    Task(title: "Task 1"),
    Task(title: "Task 2"),
    Task(title: "Task 3"),
    Task(title: "Task 4"),
    Task(title: "Task 5")
    ]
}

struct ContentView: View {

    
    var days: [Day] = [
        Day(text:"Monday", tasks: Task.testTasks1),
        Day(text:"Tuesday", tasks: Task.testTasks2),
        Day(text:"Wednesday", tasks: Task.testTasks3),
        Day(text:"Thursday", tasks: Task.testTasks1),
        Day(text:"Friday", tasks: Task.testTasks2),
        Day(text:"Saturday", tasks: Task.testTasks3),
        Day(text:"Sunday", tasks: Task.testTasks1),
        Day(text:"Monday", tasks: Task.testTasks2),
        Day(text:"Tuesday", tasks: Task.testTasks3)
    ]
    
    @State var listTasks: [Task] = [
        Task(title: "Task 1"),
        Task(title: "Task 2")
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
                                    self.updateTasks(for: day)
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
                    ForEach(listTasks) { task in
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
    
    private func updateTasks(for day: Day) {
        debugPrint("TODO")
        self.listTasks = day.tasks
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
            .frame(width: 110, height: 150)
            .background(Color.blue)
            .foregroundColor(Color.red)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
