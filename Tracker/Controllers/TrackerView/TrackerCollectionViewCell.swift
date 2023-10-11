//
//  TrackerCollectionViewCell.swift
//  Tracker
//
//  Created by Алексей Налимов on 07.10.2023.
//

import UIKit
import SnapKit

final class TrackerCollectionViewCell: UICollectionViewCell {
    
    private lazy var cellView: UIView = {
        let element = UIView()
        element.layer.cornerRadius = 16
        return element
    }()
    
    private lazy var cellLabel: UILabel = {
        let element = UILabel()
        element.text = "Кошка заслонила камеру на созвоне"
        element.font = .systemFont(ofSize: 12, weight: .medium)
        element.textColor = .white
        element.numberOfLines = 0
        element.textAlignment = .left
        return element
    }()
    
    private lazy var emojiImageView: UIImageView = {
        let element = UIImageView()
        element.layer.cornerRadius = 12
        element.backgroundColor = .white
        element.layer.opacity = 0.3
        return element
    }()
    
    private lazy var emojiLabel: UILabel = {
        let element = UILabel()
        element.font = .systemFont(ofSize: 14, weight: .medium)
        return element
    }()
    
    private lazy var dateLabel: UILabel = {
        let element = UILabel()
        element.font = .systemFont(ofSize: 12, weight: .medium)
        element.textColor = .ypBlack
        element.text = "0 дней"
        return element
    }()
    
    private lazy var doneButton: UIButton = {
        let element = UIButton()
        element.layer.cornerRadius = 17
        element.setTitle("+", for: .normal)
        element.titleLabel?.font = .systemFont(ofSize: 20)
        element.titleLabel?.textAlignment = .center
        return element
    }()
    
    weak var delegate: TrackerCollectionViewCellDelegate?
    
    private var isCompleted: Bool = false
    private var trackerID: UUID?
    private var indexPath: IndexPath?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        addConstraints()
        setupTarget()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func formatDaysString(_ days: Int) -> String {
        let lastDigit = days % 10
        let twoLastDigits = days % 100
        
        if twoLastDigits >= 11 && twoLastDigits <= 20 {
            return "\(days) дней"
        } else if lastDigit == 1 {
            return "\(days) день"
        } else if lastDigit >= 2 && lastDigit <= 4 {
            return "\(days) дня"
        } else {
            return "\(days) дней"
        }
    }
    
    func configureCell(tracker: Tracker, isCompleted: Bool, completedDays: Int, indexPath: IndexPath) {
        cellView.backgroundColor = tracker.color
        cellLabel.text = tracker.name
        doneButton.backgroundColor = tracker.color
        emojiLabel.text = tracker.emoji
        dateLabel.text = formatDaysString(completedDays)
        self.isCompleted = isCompleted
        self.trackerID = tracker.id
        self.indexPath = indexPath
        
        let doneButtonTitle = isCompleted ? "✓" : "+"
        
        doneButton.setTitle(doneButtonTitle, for: .normal)
        doneButton.alpha = isCompleted ? 0.5 : 1
    }
    
    private func setupTarget() {
        doneButton.addTarget(self, action: #selector(doneTracker), for: .touchUpInside)
    }
    
    @objc private func doneTracker() {
        guard let trackerID = trackerID,
              let indexPath = indexPath else { return }
        if isCompleted {
            delegate?.uncompleteTracker(id: trackerID, at: indexPath)
        } else {
            delegate?.completeTracker(id: trackerID, at: indexPath)
        }
    }
    
    private func setupViews() {
        addSubview(cellView)
        cellView.addSubview(emojiImageView)
        addSubview(emojiLabel)
        cellView.addSubview(cellLabel)
        addSubview(dateLabel)
        addSubview(doneButton)
    }
    
    private func addConstraints() {
        cellView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(90)
        }
        
        emojiImageView.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().inset(12)
            make.width.height.equalTo(24)
        }
        
        emojiLabel.snp.makeConstraints { make in
            make.center.equalTo(emojiImageView)
        }
        
        cellLabel.snp.makeConstraints { make in
            make.bottom.leading.trailing.equalToSuperview().inset(12)
            make.height.equalTo(34)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.centerY.equalTo(doneButton)
            make.leading.equalToSuperview().offset(12)
            make.width.equalTo(101)
        }
        
        doneButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-12)
            make.width.height.equalTo(34)
            make.bottom.equalToSuperview().offset(-16)
        }
    }
}
