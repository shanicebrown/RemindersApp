//
//  ReminderCell.swift
//  RemindersApp
//
//  Created by Shanice Brown on 10/28/21.
//

import UIKit

class ReminderCell: UITableViewCell{
    
    @IBOutlet weak var isCompletedView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func update(reminder: Reminder){
        titleLabel.text = reminder.title
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd//yy hh:mma"
        dateLabel.text = dateFormatter.string(from: reminder.date)
        
        if reminder.isCompleted{
            isCompletedView.backgroundColor = UIColor.green
        } else{
            isCompletedView.backgroundColor = UIColor.white
        }
    }
    
}
