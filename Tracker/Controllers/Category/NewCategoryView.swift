//
//  NewCategoryView.swift
//  Tracker
//
//  Created by Алексей Налимов on 11.10.2023.
//

import UIKit

final class NewCategoryView {
    
    lazy var categoryLabel: UILabel = {
        let element = UILabel()
        element.text = "Новая категория"
        element.font = .systemFont(ofSize: 16, weight: .medium)
        element.textColor = .YPBlack
        return element
    }()
    
    lazy var newCategoryTextField: UITextField = {
        let element = UITextField()
        element.placeholder = "Введите название категории"
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
    
    lazy var addCategoryButton: UIButton = {
        let element = UIButton(type: .system)
        element.layer.cornerRadius = 16
        element.setTitle("Готово", for: .normal)
        element.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        element.titleLabel?.textAlignment = .center
        element.setTitleColor(.white, for: .normal)
        element.backgroundColor = .YPGray
        element.isEnabled = false
        return element
    }()
}

