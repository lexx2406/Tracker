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
    let color: UIColor?
    let emoji: String?
    let schedule: [Week]?
}

enum Week: String, CaseIterable {
    case monday = "Понедельник"
    case tuesday = "Вторник"
    case wednesday = "Среда"
    case thursday = "Четверг"
    case friday = "Пятница"
    case saturday = "Суббота"
    case sunday = "Воскресенье"
    
    var shortName: String {
        switch self {
        case .monday: return "Пн"
        case .tuesday: return "Вт"
        case .wednesday: return "Ср"
        case .thursday: return "Чт"
        case .friday: return "Пт"
        case .saturday: return "Сб"
        case .sunday: return "Вс"
        }
    }
    
    var numberOfDay: Int {
        switch self {
        case .monday: return 2
        case .tuesday: return 3
        case .wednesday: return 4
        case .thursday: return 5
        case .friday: return 6
        case .saturday: return 7
        case .sunday: return 1
        }
    }
}

struct Categorys {
    let name: String
    let trackers: [Tracker]
}

struct Record {
    let idTracker: UUID
    let date: Date
}

enum Events {
    case regular
    case irregular
    var titleText: String {
        switch self {
        case .regular: return "Новая привычка"
        case .irregular: return "Новое нерегулярное событие"
        }
    }
}
