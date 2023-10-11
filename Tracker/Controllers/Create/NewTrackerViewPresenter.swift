//
//  NewTrackerViewPresenter.swift
//  Tracker
//
//  Created by Алексей Налимов on 10.10.2023.
//

import UIKit

final class NewTrackerViewPresenter: NewTrackerViewPresenterProtocol {
    var view: NewTrackerViewControllerProtocol?
    private let storage = Storage.shared
    let tableViewTitle = ["Категория", "Расписание"]
    
    func createNewTracker() -> [TrackerCategory] {
        guard let categories = storage.categories,
              let trackerColor = storage.trackerColor,
              let trackerName = storage.trackerName,
              let trackerEmoji = storage.trackerEmoji else { return [] }
        
        let newTracker = Tracker(id: UUID(),
                                 name: trackerName,
                                 color: trackerColor,
                                 emoji: trackerEmoji,
                                 schedule: storage.schedule ?? [1,2,3,4,5,6,7])
        
        var newCategory: [TrackerCategory] = []
        
        categories.forEach { category in
            if storage.selectedCategory == category.name {
                var newTrackers = category.trackerArray
                newTrackers.append(newTracker)
                newCategory.append(TrackerCategory(name: category.name, trackerArray: newTrackers))
            } else {
                newCategory.append(category)
            }
        }
        
        return newCategory
    }
}

