//
//  TrackersViewControllerProtocol.swift
//  Tracker
//
//  Created by Алексей Налимов on 17.10.2023.
//

import UIKit

protocol TrackersViewControllerProtocol {
    func saveDoneEvent(id: UUID, index: IndexPath)
    var localTrackers: [TrackerCategory] {get set }
}
