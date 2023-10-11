//
//  NewTrackerView .swift
//  Tracker
//
//  Created by Алексей Налимов on 10.10.2023.
//

import UIKit

final class NewTrackerView {
    
    lazy var newHabitLabel: UILabel = {
        let element = UILabel()
        element.font = .systemFont(ofSize: 16, weight: .medium)
        element.textColor = .YPBlack
        return element
    }()
    
    lazy var habitNameTextField: UITextField = {
        let element = UITextField()
        element.placeholder = "Введите название трекера"
        element.backgroundColor = .BackgroundColor
        element.layer.cornerRadius = 16
        element.clearButtonMode = .whileEditing
        element.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        element.leftViewMode = .always
        element.returnKeyType = .done
        element.font = .systemFont(ofSize: 17, weight: .regular)
        element.textColor = .YPBlack
        return element
    }()
    
    lazy var warningLabel: UILabel = {
        let element = UILabel()
        element.text = "Ограничение 38 символов"
        element.font = .systemFont(ofSize: 17, weight: .regular)
        element.textColor = .YPRed
        return element
    }()
    
    lazy var categoryAndScheduleTableView: UITableView = {
        let element = UITableView()
        element.separatorStyle = .singleLine
        element.layer.cornerRadius = 16
        element.isScrollEnabled = false
        return element
    }()
    
    lazy var scrollView: UIScrollView = {
        let element = UIScrollView()
        return element
    }()
    
    lazy var collectionView: UICollectionView = {
        let element = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        element.backgroundColor = .YPWhite
        element.isScrollEnabled = false
        element.allowsMultipleSelection = true
        return element
    }()
    
    lazy var cancelButton: UIButton = {
        let element = UIButton(type: .system)
        element.layer.cornerRadius = 16
        element.layer.borderWidth = 1
        element.layer.borderColor = UIColor.YPRed.cgColor
        element.setTitle("Отменить", for: .normal)
        element.titleLabel?.textAlignment = .center
        element.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        element.backgroundColor = .YPWhite
        element.tintColor = .YPRed
        return element
    }()
    
    lazy var createButton: UIButton = {
        let element = UIButton(type: .system)
        element.layer.cornerRadius = 16
        element.setTitle("Создать", for: .normal)
        element.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        element.setTitleColor(.white, for: .normal)
        element.backgroundColor = .YPGray
        element.isEnabled = false
        return element
    }()
}

