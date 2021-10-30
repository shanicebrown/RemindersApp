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
        //Add reminders to reminders array in a sorted order.
        var indexToInsert: Int?
        for (index, element) in reminders.enumerated(){
            if element.date.timeIntervalSince1970 > reminder.date.timeIntervalSince1970{
                indexToInsert = index
                break
            }
        }
        
        // If we have indexToInsert, then we use it!
        if let indexToInsert = indexToInsert {
            reminders.insert(reminder, at: indexToInsert)
        //If not, we append the reminder to the end of the array.
        } else{
            reminders.append(reminder)
    }
        
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
    func getFavoritedReminder() -> Reminder?{
        return reminders.first
    }
}


