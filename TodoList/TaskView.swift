//
//  TaskView.swift
//  TodoList
//
//  Created by Korisnik on 29/11/2019.
//  Copyright © 2019 feelmorelabs. All rights reserved.
//

import SwiftUI

struct TaskView: View {
    
    let task: Task
    
    var body: some View {
        
        HStack {
            Button(action: {
                print("TODO2")
            }) {
                Text("✅")
            }
            .padding(Edge.Set(arrayLiteral: .leading, .trailing), 10)
            Text(task.title)
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: Task(title: ""))
    }
}
