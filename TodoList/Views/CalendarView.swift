//
//  CalendarView.swift
//  TodoList
//
//  Created by Josip Rezic on 29/11/2019.
//  Copyright © 2019 Josip Rezic. All rights reserved.
//

import SwiftUI

struct CalendarView: View {
    
    @State var viewModel = CalendarViewModel()
    
    var body: some View {
        NavigationView {
            
            List {
                VStack(alignment: .leading) {
                    
                    Text("Days")
                        .padding(.leading, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(viewModel.days) { day in
                                Button(action: {
                                    self.updateTasks(for: day)
                                }) {
                                    DayView(day: day)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                    .frame(height: 150.0)
                    .background(Color.green)
                }
                
                ForEach(viewModel.listTasks) { task in
                    NavigationLink(destination: DetailView(task: task)) {
                        TaskView(task: task)
                    }
                }
            }
            .navigationBarTitle(Text("Todo list"))
            .padding(.leading, -15)
            .padding(.trailing, -15)
            
        }
    }
    
    private func updateTasks(for day: Day) {
        debugPrint("TODO")
        self.viewModel.listTasks = day.tasks
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
