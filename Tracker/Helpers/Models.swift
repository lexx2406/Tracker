//
//  Models.swift
//  Tracker
//
//  Created by Алексей Налимов on 06.10.2023.
//

import UIKit

var trackers: [TrackerCategory] = []

let colorCollectionData = [
    UIColor(named: "Color_one"),
    UIColor(named: "Color_two"),
    UIColor(named: "Color_three"),
    UIColor(named: "Color_four"),
    UIColor(named: "Color_five"),
    UIColor(named: "Color_six"),
    UIColor(named: "Color_seven"),
    UIColor(named: "Color_eight"),
    UIColor(named: "Color_nine"),
    UIColor(named: "Color_ten"),
    UIColor(named: "Color_eleven"),
    UIColor(named: "Color_twelve"),
    UIColor(named: "Color_thirteen"),
    UIColor(named: "Сolor_fourteen"),
    UIColor(named: "Сolor_fiveteen"),
    UIColor(named: "Color_sixteen"),
    UIColor(named: "Color_seventeen"),
    UIColor(named: "Color_eighteen")
]

let emojiCollectionData = ["🙂", "😻", "🌺", "🐶", "❤️", "😱", "😇", "😡", "🥶", "🤔", "🙌", "🍔", "🥦", "🏓", "🥇", "🎸", "🏝", "😪"]

var categories = ["Важное", "Домашний уют", "Работа", "Учёба", "Спорт"]
var categoryName = ""

enum dayOfWeek: String {
    case monday = "понедельник"
    case tuesday = "вторник"
    case wednesday = "среда"
    case thursday = "четверг"
    case friday = "пятница"
    case saturday = "суббота"
    case sunday = "воскресенье"
}

let daysOfWeek: [dayOfWeek] = [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday]

var selectedDays: [String] = []
var shortSelectedDays: [String] = []
var titles: [String] = []
var trackerRecords: [TrackerRecord] = []

struct Event {
    let id: UUID
    var name: String
    var emoji: String
    var color: UIColor
    var day: [String]?
    
    init(id: UUID = UUID(), name: String, emoji: String, color: UIColor, day: [String]?) {
        self.id = id
        self.name = name
        self.emoji = emoji
        self.color = color
        self.day = day
    }
}

struct TrackerCategory {
    
    let label: String
    let trackers: [Event]
    
    init(label: String, trackers: [Event]) {
        self.label = label
        self.trackers = trackers
    }
}

struct TrackerRecord {
    let id: UUID
    var day: String
    
    init(id: UUID, day: String) {
        self.id = id
        self.day = day
    }
}

