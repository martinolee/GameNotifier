//
//  LeagueViewController.swift
//  GameNotifier
//
//  Created by 이수한 on 07/01/2019.
//  Copyright © 2019 Lee Soo-Han. All rights reserved.
//

import UIKit

class LeagueViewController: UITableViewController {
    
    let leagues = ["England", "Spain", "Germany", "Italy", "France"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leagues.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "leagueCell")
        cell.textLabel?.text = leagues[indexPath.row]

        return cell
    }

}
