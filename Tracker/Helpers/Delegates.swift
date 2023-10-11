//
//  Delegates.swift
//  Tracker
//
//  Created by Алексей Налимов on 8.10.2023.
//

import Foundation
    
    protocol ScheduleViewControllerDelegate: Any {
        func addDaysToSchedule(cell: ScheduleTableViewCell)
    }
    
    protocol TrackerCollectionViewCellDelegate: AnyObject {
        func completeTracker(id: UUID, at indexPath: IndexPath)
        func uncompleteTracker(id: UUID, at indexPath: IndexPath)
    }
