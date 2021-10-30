//
//  NewReminderViewController.swift
//  RemindersApp
//
//  Created by Shanice Brown on 10/29/21.
//

import UIKit

class NewReminderViewController: UIViewController{
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var completedSwitch: UISwitch!
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        //Create a reminder object
        let reminder = Reminder(title: titleTextField.text!,
                                date: datePicker.date,
                                isCompleted: completedSwitch.isOn)
        
        ReminderService.shared.create(reminder: reminder)
        
        navigationController?.popViewController(animated: true)
    }
    
}
