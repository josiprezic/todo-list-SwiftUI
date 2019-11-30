//
//  CalendarView.swift
//  TodoList
//
//  Created by Josip Rezić on 29/11/2019.
//  Copyright © 2019 Josip Rezić. All rights reserved.
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
                    //.background(Color.green)
                }
                
                ForEach(viewModel.listTasks) { task in
                    TaskView(task: task)
                }
            }
            .navigationBarTitle(Text("Todo list"))
            .padding(.leading, -15)
            .padding(.trailing, -15)
            .navigationBarItems(trailing:
                Button("Add") {
                    self.addTaskTapped()
            })
        }
    }
    
    private func updateTasks(for day: Day) {
        debugPrint("TODO")
        self.viewModel.currentDayIndex = day.id
    }
    
    private func addTaskTapped() {
        debugPrint("TODO4")
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
