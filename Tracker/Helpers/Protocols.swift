//
//  Protocols.swift
//  Tracker
//
//  Created by Алексей Налимов on 08.10.2023.
//

import Foundation

protocol ScheduleViewControllerDelegate: AnyObject {
    func createSchedule(schedule: [Week])
}

protocol WeekTableCellDelegate: AnyObject {
    func stateChanged(for day: Week, isOn: Bool)
}

protocol EventViewControllerDelegate: AnyObject {
    func createTracker(_ tracker: Tracker, categoryName: String)
}

protocol CreateTrackerViewControllerDelegate: AnyObject {
    func createTracker(_ tracker: Tracker, categoryName: String)
}

protocol CollectionViewCellDelegate: AnyObject {
    func completedTracker(id: UUID)
}
