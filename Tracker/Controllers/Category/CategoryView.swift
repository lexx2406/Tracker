//
//  CategoryView.swift
//  Tracker
//
//  Created by Алексей Налимов on 11.10.2023.
//

import UIKit

final class CategoryView {
    
    lazy var categoryLabel: UILabel = {
        let element = UILabel()
        element.text = "Категория"
        element.font = .systemFont(ofSize: 16, weight: .medium)
        element.textColor = .YPBlack
        return element
    }()
    
    lazy var emptyLabel: UILabel = {
        let element = UILabel()
        element.text = "Привычки и события можно\nобъединить по смыслу"
        element.textColor = .YPBlack
        element.numberOfLines = 0
        element.textAlignment = .center
        element.font = .systemFont(ofSize: 12, weight: .medium)
        return element
    }()
    
    lazy var emptyImage: UIImageView = {
        let element = UIImageView()
        element.image = Resourses.Images.trackerEmptyImage
        return element
    }()
    
    lazy var categoryTableView: UITableView = {
        let element = UITableView()
        element.layer.cornerRadius = 16
        element.separatorStyle = .singleLine
        element.isScrollEnabled = false
        return element
    }()
    
    lazy var addCategoryButton: UIButton = {
        let element = UIButton(type: .system)
        element.layer.cornerRadius = 16
        element.setTitle("Добавить категорию", for: .normal)
        element.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        element.titleLabel?.textAlignment = .center
        element.backgroundColor = .YPBlack
        element.tintColor = .YPWhite
        return element
    }()
}

