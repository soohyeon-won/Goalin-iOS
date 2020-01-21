//
//  ViewController.swift
//  Goalin
//
//  Created by wonsoohyeon on 12/01/2020.
//  Copyright © 2020 Soohyeon Won. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {

    @IBOutlet weak var appBar: UIView!
    @IBOutlet weak var tableView: UITableView!
    var goalList: [MainGoal] = [MainGoal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initAppBarView()
        initData()
        initTableView()
    }
    
    private func initAppBarView() {
        let view: AppBarView = AppBarView()
        appBar.addSubview(view)
        view.initAppBarView("GOALIN", .home)
    }
    
    func initData() {
        //dummy
        goalList.append(MainGoal(goal: "목표", title: "제목", isDone: false, startDate: Date(), endDate: Date()))
    }

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    private func initTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: MainGoalTableViewCell.reuseableIdentifier, bundle: nil),
                           forCellReuseIdentifier: MainGoalTableViewCell.reuseableIdentifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goalList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 114 //98 + 16 = 114
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: MainGoalTableViewCell = tableView.dequeueReusableCell(withIdentifier: MainGoalTableViewCell.reuseableIdentifier) as? MainGoalTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
    
}
