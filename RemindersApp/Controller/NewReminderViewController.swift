//
//  NewReminderViewController.swift
//  RemindersApp
//
//  Created by Shanice Brown on 10/29/21.
//

import UIKit

class NewReminderViewController: UIViewController{
    
    var reminderIndex: Int?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var completedSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let reminderIndex = reminderIndex{
            let reminder = ReminderService.shared.getReminder(index: reminderIndex)
            titleTextField.text = reminder.title
            datePicker.date = reminder.date
            completedSwitch.isOn = reminder.isCompleted
        }
    }
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        let reminder = Reminder(title: titleTextField.text!,
                                date: datePicker.date,
                                isCompleted: completedSwitch.isOn)
        //Update a reminder
        if let reminderIndex = reminderIndex {
            ReminderService.shared.update(reminder: reminder, index: reminderIndex)
            //else, create a new reminder object
        } else{
    
        ReminderService.shared.create(reminder: reminder)
        }
        navigationController?.popViewController(animated: true)
    }
    
}
