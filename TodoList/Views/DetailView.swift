//
//  DetailView.swift
//  TodoList
//
//  Created by Josip Rezić on 29/11/2019.
//  Copyright © 2019 Josip Rezić. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let task: Task
    
    var body: some View {
        
        List {
            Text(task.title)
            Text("Description" + task.description)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(task: Task(date: Date(), title: ""))
    }
}
