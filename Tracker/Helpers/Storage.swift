//
//  Storage.swift
//  Tracker
//
//  Created by Алексей Налимов on 07.10.2023.
//

import UIKit

final class Storage {
    static let shared = Storage()
    
    var selectedCategory: String?
    var selectedSchedule: String?
    
    var trackerName: String?
    var trackerEmoji: String?
    var trackerColor: UIColor?
    var schedule: [Int]?
    
    var categories: [TrackerCategory]? = [
        TrackerCategory(name: "Важное", trackerArray: [Tracker(id: UUID(),
                                                               name: "Учиться делать iOS-приложения",
                                                               color: .Color_one,
                                                               emoji: "🐶",
                                                               schedule: [ 2, 4, 6]),
                                                       Tracker(id: UUID(),
                                                               name: "Получить права",
                                                               color: .Color_two,
                                                               emoji: "😻",
                                                               schedule: [ 3, 5, 6, 7])]),
        TrackerCategory(name: "Уборка", trackerArray: [Tracker(id: UUID(),
                                                               name: "Полить цветы",
                                                               color: .Color_three,
                                                               emoji: "🍔",
                                                               schedule: [3, 4, 5, 6, 7]),
                                                       Tracker(id: UUID(),
                                                               name: "Влажная уборка",
                                                               color: .Color_four,
                                                               emoji: "😇",
                                                               schedule: [ 4, 6])])
    ]
    
    var visibleCategories: [TrackerCategory]? = []
    var completedTrackers: [TrackerRecord]? = []
    
    var emojies = [
        "🙂", "😻", "🌺", "🐶", "❤️", "😱",
        "😇", "😡", "🥶", "🤔", "🙌", "🍔",
        "🥦", "🏓", "🥇", "🎸", "🏝", "😪"
    ]
    
    var colors: [UIColor] = [
        .Color_one, .Color_two, .Color_three, .Color_four, .Color_five, .Color_six,
        .Color_seven, .Color_eight, .Color_nine, .Color_ten, .Color_eleven, .Color_twelve,
        .Color_thirteen, .Сolor_fourteen, .Сolor_fiveteen, .Color_sixteen, .Color_seventeen, .Color_eighteen,
    ]
    
    func resetNewTrackerInfo() {
        trackerName = nil
        selectedCategory = nil
        selectedSchedule = nil
        trackerEmoji = nil
        trackerColor = nil
    }
}
