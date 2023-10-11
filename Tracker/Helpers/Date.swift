//
//  Date.swift
//  Tracker
//
//  Created by Алексей Налимов on 01.10.2023.
//

import Foundation

final class DateService {
    let calendar = Calendar.current
    func getNumberOfSelectedDay(date: Date?) -> Int {
        guard let date = date else { return 0 }
        let dayOfTheWeek = calendar.component(.weekday, from: date)
        return dayOfTheWeek
    }
}
