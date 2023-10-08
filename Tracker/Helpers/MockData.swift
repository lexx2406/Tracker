//
//  MockData.swift
//  Tracker
//
//  Created by Алексей Налимов on 09.10.2023.
//

import Foundation

class MockData {
    static var categories: [Category] = [
        Category(name: "Важное", trackers: [
            Tracker(id: UUID(), name: "Полить цветы", color: .Сolor_fiveteen, emoji: "🏝", schedule: [.wednesday, .saturday]),
            Tracker(id: UUID(), name: "Помыть посуду", color: .Color_thirteen, emoji: "🙂", schedule: [.monday, .saturday, .wednesday, .friday, .sunday, .thursday,.tuesday])
        ]),
        Category(name: "Тренировки", trackers: [
            Tracker(id: UUID(), name: "Зарядка", color: .Color_ten, emoji: "🤸‍♂️", schedule: [.monday, .wednesday, .friday]),
            Tracker(id: UUID(), name: "Бассейн", color: .Сolor_fourteen, emoji: "🏊‍♀️", schedule: [.tuesday, .thursday, .saturday]),
            Tracker(id: UUID(), name: "Бег", color: .Color_seventeen, emoji: "🏃‍♂️", schedule: [.wednesday, .saturday]),
        Tracker(id: UUID(), name: "Зарядка", color: .Color_ten, emoji: "🤸‍♂️", schedule: [.monday, .wednesday, .saturday]),
        Tracker(id: UUID(), name: "Бассейн", color: .Сolor_fourteen, emoji: "🏊‍♀️", schedule: [.tuesday, .thursday, .saturday]),
            Tracker(id: UUID(), name: "Бег", color: .Color_seventeen, emoji: "🏃‍♂️", schedule: [.wednesday, .saturday]),
    ])]
}

