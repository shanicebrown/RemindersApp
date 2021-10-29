//
//  ReminderService.swift
//  RemindersApp
//
//  Created by Shanice Brown on 10/28/21.
//

import Foundation

class ReminderService{
    static let shared = ReminderService()
    private var reminders = [Reminder]()
    
    //Create
    func create(reminder: Reminder){
        reminders.append(reminder)
    }

    
    //Update
    func update(reminder: Reminder, index: Int){
        reminders[index] = reminder
        
    }
    
    //Get # of reminders
    func getCount() -> Int{
        return reminders.count
        
        
    }
    
    //Get specfic reminder
    func getReminder(index: Int) -> Reminder{
        return reminders[index]
    }
    
    //Toggle completed status of a reminder
    func toggleCompleted(index: Int){
        let reminder = getReminder(index: index)
        reminder.isCompleted = !reminder.isCompleted
    }
    
    //Get the list of reminders
    func getReminders() -> [Reminder]{
        return reminders
    }
    //Delete a reminder
    func delete(index: Int){
        reminders.remove(at: index)
    }
    
    //Get the favoritedReminder
    func getFavoritedReminders() -> Reminder?{
        return reminders.first
    }
}


