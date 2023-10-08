//
//  UIDate+Extensions.swift
//  Tracker
//
//  Created by Алексей Налимов on 01.10.2023.
//

import Foundation

extension Date {
    var yearMonthDayComponents: DateComponents {
        Calendar.current.dateComponents([.year, .month, .day], from: self)
    }
}

