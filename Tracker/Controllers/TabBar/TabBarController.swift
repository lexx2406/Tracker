//
//  TabBarController.swift
//  Tracker
//
//  Created by Алексей Налимов on 08.10.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    var presenter: TrackerViewPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .YPWhite
        self.tabBar.standardAppearance = appearance
        
        let trackerViewPresenter = TrackerViewPresenter()
        let trackerViewController = TrackerViewController()
        trackerViewController.presenter = trackerViewPresenter
        
        let trackerNavigationController = UINavigationController(rootViewController: trackerViewController)
        let statisticNavigationController = UINavigationController(rootViewController: StatisticViewController())
        
        trackerNavigationController.navigationBar.prefersLargeTitles = true
        trackerNavigationController.navigationItem.largeTitleDisplayMode = .automatic
        trackerNavigationController.navigationBar.topItem?.title = "Трекеры"
        
        statisticNavigationController.navigationBar.prefersLargeTitles = true
        statisticNavigationController.navigationItem.largeTitleDisplayMode = .automatic
        statisticNavigationController.navigationBar.topItem?.title = "Статистика"
        
        trackerNavigationController.tabBarItem = UITabBarItem(title: "Трекеры",
                                                        image: UIImage(systemName: "record.circle.fill"),
                                                        selectedImage: nil)
        statisticNavigationController.tabBarItem = UITabBarItem(title: "Статистика",
                                                          image: UIImage(systemName: "hare.fill"),
                                                          selectedImage: nil)
        
        self.viewControllers = [trackerNavigationController, statisticNavigationController]
    }
}
