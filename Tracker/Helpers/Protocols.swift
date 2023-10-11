//
//  Protocols.swift
//  Tracker
//
//  Created by Алексей Налимов on 08.10.2023.
//

import Foundation

struct Protocols {
    
    protocol TrackerViewControllerProtocol: AnyObject {
        var presenter: TrackerViewPresenterProtocol? { get set }
        func reloadCollectionView()
        func setupTrackersFromDatePicker()
    }
    
    protocol TrackerViewPresenterProtocol: AnyObject {
        var currentDate: Date? { get set }
        func filterTrackers(text: String?)
    }
    
    protocol CreateTrackerViewControllerProtocol: AnyObject {
        var presenter: TrackerViewPresenterProtocol? { get set }
        var viewController: TrackerViewControllerProtocol? { get }
        func switchToTrackerVC()
    }
    
    protocol NewTrackerViewControllerProtocol: AnyObject {
        var presenter: NewTrackerViewPresenterProtocol? { get set }
        var typeOfTracker: TypeOfTracker? { get }
        func enableCreateButton()
        func disableCreateButton()
        func reloadTableView()
    }
    
    protocol NewTrackerViewPresenterProtocol: AnyObject {
        var view: NewTrackerViewControllerProtocol? { get set }
        var tableViewTitle: [String] { get }
        func createNewTracker() -> [TrackerCategory]
    }
    
    protocol NewCategoryViewControllerProtocol: AnyObject {
        var viewController: CategoryViewControllerProtocol? { get }
    }
    
    protocol CategoryViewControllerProtocol: AnyObject {
        var viewController: NewTrackerViewControllerProtocol? { get }
        func checkCellsCount()
        func reloadTableView()
    }
    
    protocol ScheduleViewControllerProtocol: AnyObject {
        var presenter: ScheduleViewPresenterProtocol? { get set }
        var viewController: NewTrackerViewControllerProtocol? { get }
    }
    
    protocol ScheduleViewPresenterProtocol: AnyObject {
        var daysInInt: [Int] { get set }
        var days: [String] { get set }
    }

}
