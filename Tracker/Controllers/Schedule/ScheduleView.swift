//
//  ScheduleView.swift
//  Tracker
//
//  Created by Алексей Налимов on 8.10.2023.
//

import UIKit

final class ScheduleView {
    lazy var scheduleLabel: UILabel = {
        let element = UILabel()
        element.text = "Расписание"
        element.font = .systemFont(ofSize: 16, weight: .medium)
        element.textColor = .ypBlack
        return element
    }()
    
    lazy var scheduleTableView: UITableView = {
        let element = UITableView()
        element.layer.cornerRadius = 16
        element.separatorStyle = .singleLine
        element.allowsSelection = false
        return element
    }()
    
    lazy var doneButton: UIButton = {
        let element = UIButton(type: .system)
        element.layer.cornerRadius = 16
        element.setTitle("Готово", for: .normal)
        element.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        element.titleLabel?.textAlignment = .center
        element.backgroundColor = .ypBlack
        element.tintColor = .ypWhite
        return element
    }()
}

