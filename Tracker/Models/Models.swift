//
//  Models.swift
//  Tracker
//
//  Created by Алексей Налимов on 06.10.2023.
//

import UIKit

var trackers: [TrackerCategory] = []
var categories = ["Важное", "Домашний уют", "Работа", "Учёба", "Спорт"]
var categoryName = ""
let daysOfWeek: [weekdays] = [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday]
var selectedDays: [String] = []
var shortSelectedDays: [String] = []
var titles: [String] = []
var completedTrackers: [TrackerRecord] = []

struct TrackerCategory {
    
    let label: String
    let trackers: [Tracker]
    
    init(label: String, trackers: [Tracker]) {
        self.label = label
        self.trackers = trackers
    }
}

struct TrackerRecord {
    let id: UUID
    let day: String
    
    init(id: UUID, day: String) {
        self.id = id
        self.day = day
    }
}

struct Tracker {
    let id: UUID
    let name: String
    let emoji: String
    let color: UIColor
    let day: [String]?
    
    init(id: UUID = UUID(), name: String, emoji: String, color: UIColor, day: [String]?) {
        self.id = id
        self.name = name
        self.emoji = emoji
        self.color = color
        self.day = day
    }
}

enum weekdays: String {
    case monday = "понедельник"
    case tuesday = "вторник"
    case wednesday = "среда"
    case thursday = "четверг"
    case friday = "пятница"
    case saturday = "суббота"
    case sunday = "воскресенье"
}

let emojiCollectionData = ["🙂", "😻", "🌺", "🐶", "❤️", "😱", "😇", "😡", "🥶", "🤔", "🙌", "🍔", "🥦", "🏓", "🥇", "🎸", "🏝", "😪"]


let colorCollectionData = [
    UIColor.Color_one, UIColor.Color_two, UIColor.Color_three, UIColor.Color_four, UIColor.Color_five, UIColor.Color_six, UIColor.Color_seven,UIColor.Color_eight, UIColor.Color_nine, UIColor.Color_ten, UIColor.Color_eleven,UIColor.Color_twelve, UIColor.Color_thirteen, UIColor.Сolor_fourteen, UIColor.Сolor_fiveteen,UIColor.Color_sixteen, UIColor.Color_seventeen, UIColor.Color_eighteen
]

