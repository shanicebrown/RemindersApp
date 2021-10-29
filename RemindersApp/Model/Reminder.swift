//
//  Reminder.swift
//  RemindersApp
//
//  Created by Shanice Brown on 10/28/21.
//

import Foundation


class Reminder {
    var title: String
    var date: Date
    var isCompleted: Bool
    
    init(title: String, date: Date, isCompleted: Bool){
        self.title = title
        self.date = date
        self.isCompleted = isCompleted
    }
}

