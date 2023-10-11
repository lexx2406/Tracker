//
//  ScheduleTableViewCell.swift
//  Tracker
//
//  Created by Алексей Налимов on 8.10.2023.
//

import UIKit
import SnapKit

final class ScheduleTableViewCell: UITableViewCell {
    
    var delegate: ScheduleViewControllerDelegate?
    
    lazy var label: UILabel = {
        let element = UILabel()
        element.font = .systemFont(ofSize: 17, weight: .regular)
        element.textColor = .YPBlack
        return element
    }()
    
    lazy var switcher: UISwitch = {
        let element = UISwitch()
        element.onTintColor = .YPBlue
        element.addTarget(self, action: #selector(addSchedule), for: .allTouchEvents)
        return element
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupView()
        addConstraints()
        backgroundColor = .BackgroundColor
    }
    
    func configureCell(text: String) {
        label.text = text
    }
    
    @objc private func addSchedule() {
        delegate?.addDaysToSchedule(cell: self)
    }
    
    private func setupView() {
        addSubview(label)
        addSubview(switcher)
    }
    
    private func addConstraints() {
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
        }
        
        switcher.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
        }
    }
}

