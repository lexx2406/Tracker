//
//  Models.swift
//  Tracker
//
//  Created by Алексей Налимов on 06.10.2023.
//

import UIKit

struct Tracker {
    let id: UUID
    let name: String
    let color: UIColor
    let emoji: String
    let schedule: [Int]?
}

struct TrackerCategory {
    let name: String
    var trackerArray: [Tracker]
}

struct TrackerRecord {
    let id: UUID
    let date: Date
}

enum Resourses {
    enum Images {
        static let statisticEmptyImage = UIImage(named: "statisticEmptyImage")
        static let trackerEmptyImage = UIImage(named: "trackerEmptyImage")
        static let searchEmptyImage = UIImage(named: "searchEmptyImage")
    }
    
    enum WeekDay: String, CaseIterable {
        case Понедельник
        case Вторник
        case Среда
        case Четверг
        case Пятница
        case Суббота
        case Воскресенье
    }
}
