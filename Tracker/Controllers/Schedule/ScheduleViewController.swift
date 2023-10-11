//
//  ScheduleViewController.swift
//  Tracker
//
//  Created by Алексей Налимов on 8.10.2023.
//

import UIKit
import SnapKit

final class ScheduleViewController: UIViewController, ScheduleViewControllerProtocol {
    
    var presenter: ScheduleViewPresenterProtocol?
    var viewController: NewTrackerViewControllerProtocol?

    private let scheduleView = ScheduleView()
    private let scheduleService = ScheduleService()
    private let storage = Storage.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = SchedulePresenter()
        
        addView()
        setupTableView()
        addTarget()
    }
    
    private func setupTableView() {
        scheduleView.scheduleTableView.register(ScheduleTableViewCell.self, forCellReuseIdentifier: "ScheduleTableViewCell")
        scheduleView.scheduleTableView.dataSource = self
        scheduleView.scheduleTableView.delegate = self
    }
    
    private func addTarget() {
        scheduleView.doneButton.addTarget(self, action: #selector(returnToNewTrackerVC), for: .touchUpInside)
    }
    
    @objc private func returnToNewTrackerVC() {
        let schedule = presenter?.daysInInt ?? []
        let scheduleDay = presenter?.daysInInt.count == 7 ? "Каждый день" : scheduleService.arrayToString(array: schedule)
        storage.selectedSchedule = scheduleDay
        storage.schedule = schedule
        viewController?.reloadTableView()
        dismiss(animated: true)
    }
}

extension ScheduleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Resourses.WeekDay.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleTableViewCell", for: indexPath) as? ScheduleTableViewCell else { return UITableViewCell() }
        
        cell.delegate = self
        cell.configureCell(text: Resourses.WeekDay.allCases[indexPath.row].rawValue)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
}

extension ScheduleViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension ScheduleViewController: ScheduleViewControllerDelegate {
    func addDaysToSchedule(cell: ScheduleTableViewCell) {
        guard let fullNameofDay = cell.label.text else { return }
        
        let shortNameOfDay = scheduleService.addDayToSchedule(day: fullNameofDay)
        if cell.switcher.isOn {
            presenter?.daysInInt.append(shortNameOfDay)
        } else {
            if let index = presenter?.daysInInt.firstIndex(of: shortNameOfDay) {
                presenter?.daysInInt.remove(at: index)
            }
        }
    }
}

extension ScheduleViewController {
    private func addView() {
        view.backgroundColor = .YPWhite
        view.addSubview(scheduleView.scheduleLabel)
        view.addSubview(scheduleView.scheduleTableView)
        view.addSubview(scheduleView.doneButton)
        addConstraints()
    }
    
    private func addConstraints() {
        scheduleView.scheduleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(27)
            make.centerX.equalToSuperview()
        }
        
        scheduleView.scheduleTableView.snp.makeConstraints { make in
            make.height.equalTo(524)
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalTo(scheduleView.scheduleLabel.snp.bottom).offset(30)
        }
        
        scheduleView.doneButton.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-16)
        }
    }
}
