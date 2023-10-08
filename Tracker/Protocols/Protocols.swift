//
//  Protocols.swift
//  Tracker
//
//  Created by Алексей Налимов on 08.10.2023.
//

import Foundation

protocol ScheduleVCDelegate: AnyObject {
    func createSchedule(schedule: [Week])
}

protocol WeekTableCellDelegate: AnyObject {
    func stateChanged(for day: Week, isOn: Bool)
}
