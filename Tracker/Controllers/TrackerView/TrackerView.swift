//
//  TrackerView.swift
//  Tracker
//
//  Created by Алексей Налимов on 05.10.2023.
//

import UIKit

final class TrackerView {
    
    lazy var emptyLabel: UILabel = {
        let element = UILabel()
        element.textColor = .YPBlack
        element.textAlignment = .center
        element.font = .systemFont(ofSize: 12, weight: .medium)
        return element
    }()
    
    lazy var emptyImage: UIImageView = {
        let element = UIImageView()
        return element
    }()
    
    lazy var trackersCollectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = .YPWhite
        collectionView.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 0, right: 0)
        return collectionView
    }()
    
    lazy var datePicker: UIDatePicker = {
        let element = UIDatePicker()
        element.preferredDatePickerStyle = .compact
        element.datePickerMode = .date
        element.layer.cornerRadius = 8
        element.locale = Locale(identifier: "ru_RU")
        element.calendar.firstWeekday = 2
        return element
    }()
    
    lazy var searchTextField: UISearchTextField = {
        let element = UISearchTextField()
        element.placeholder = "Поиск"
        element.font = .systemFont(ofSize: 17, weight: .regular)
        element.returnKeyType = .search
        element.textColor = .YPBlack
        element.clearButtonMode = .never
        return element
    }()
    
    lazy var cancelButton: UIButton = {
        let element = UIButton(type: .system)
        element.tintColor = .YPBlue
        element.setTitle("Отменить", for: .normal)
        element.titleLabel?.font = .systemFont(ofSize: 17, weight: .regular)
        return element
    }()
    
    lazy var filterButton: UIButton = {
        let element = UIButton(type: .system)
        element.backgroundColor = .YPBlue
        element.tintColor = .white
        element.layer.cornerRadius = 16
        element.setTitle("Фильтры", for: .normal)
        element.titleLabel?.font = .systemFont(ofSize: 17, weight: .regular)
        return element
    }()
}
