//
//  DetailView.swift
//  TodoList
//
//  Created by Josip Rezic on 29/11/2019.
//  Copyright © 2019 feelmorelabs. All rights reserved.
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
        DetailView(task: Task(title: ""))
    }
}
