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
            .frame(width: 60, height: 40, alignment: .center)
            //.background(Color.red)
            .buttonStyle(BorderlessButtonStyle())
            
            NavigationLink(destination: DetailView(task: task)) {
                HStack {
                    Text(task.title)
                    Spacer()
                }
                .padding(.leading, -10)
                .frame(height: 40, alignment: .leading)
                //.background(Color.red)
                .buttonStyle(BorderlessButtonStyle())
            }
            .padding(.trailing, 10)
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: Task(title: ""))
    }
}
