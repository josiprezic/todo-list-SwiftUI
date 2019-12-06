//
//  TaskView.swift
//  TodoList
//
//  Created by Josip Rezić on 29/11/2019.
//  Copyright © 2019 Josip Rezić. All rights reserved.
//

import SwiftUI

struct TaskView: View {
    @EnvironmentObject var appStorage: AppStorage
    let task: Task
    
    var body: some View {
        
        HStack {
            Button(action: {
                //self.task.finished.toggle()
                self.toggleFinished()
            }) {
                Text(task.finished ? "✅" : "🟩")
            }
            .frame(width: 60, height: 40, alignment: .center)
            .buttonStyle(BorderlessButtonStyle())
            
            NavigationLink(destination: DetailView(task: task)) {
                HStack {
                    Text(task.title)
                    Spacer()
                }
                .padding(.leading, -10)
                .frame(height: 40, alignment: .leading)
                .buttonStyle(BorderlessButtonStyle())
            }
            .padding(.trailing, 10)
        }
    }
    
    private func toggleFinished() {
        let index = AppStorage.tasks.firstIndex { task in task.id == self.task.id }
        guard let checkedIndex = index else {
            return
        }
        debugPrint("Index: \(checkedIndex)")
        AppStorage.tasks[checkedIndex].finished.toggle()
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: Task(date: Date(), title: ""))
    }
}
