//
//  ToDoList.swift
//  To Do List
//
//  Created by Student on 2/1/21.
//  Copyright © 2021 elenator. All rights reserved.
//

import Foundation

class ToDoList: ObservableObject {

   @Published var items = [ToDoItem(priority: "High", description: "Take out trash", dueDate: Date()),

                           ToDoItem(priority: "Medium", description: "Pick up clothes", dueDate: Date()),

                           ToDoItem(priority: "Low", description: "Eat a donut", dueDate: Date())]

}
