//
//  FixtureViewController.swift
//  GameNotifier
//
//  Created by 이수한 on 01/02/2019.
//  Copyright © 2019 Lee Soo-Han. All rights reserved.
//

import UIKit

class FixtureViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fixtureCell", for: indexPath) as! TeamCell
        
        return cell
    }
}
