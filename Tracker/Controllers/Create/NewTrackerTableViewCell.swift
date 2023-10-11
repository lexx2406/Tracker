//
//  NewTrackerTableViewCell.swift
//  Tracker
//
//  Created by Алексей Налимов on 10.10.2023.
//

import UIKit
import SnapKit

final class NewTrackerTableViewCell: UITableViewCell {
    
    lazy var label: UILabel = {
        let element = UILabel()
        element.font = .systemFont(ofSize: 17, weight: .regular)
        element.textColor = .YPBlack
        return element
    }()
    
    private lazy var categoryLabel: UILabel = {
        let element = UILabel()
        element.font = .systemFont(ofSize: 17, weight: .regular)
        element.textColor = .YPGray
        return element
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .BackgroundColor
        accessoryType = .disclosureIndicator
    }
    
    func configureCellWithoutCategory() {
        addSubview(label)
        
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
        }
    }
    
    func configureCellWithCategory(_ with: String) {
        addSubview(label)
        addSubview(categoryLabel)
        
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(15)
        }
        
        categoryLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.equalTo(label.snp.bottom).offset(2)
        }
        
        categoryLabel.text = with
    }
}

