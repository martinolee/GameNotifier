//
//  LeagueViewController.swift
//  GameNotifier
//
//  Created by 이수한 on 07/01/2019.
//  Copyright © 2019 Lee Soo-Han. All rights reserved.
//

import UIKit

class LeagueViewController: UITableViewController {
    
    var selectedLeague: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leagues.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leagueCell", for: indexPath) as! LeagueCell
        cell.leagueLabel.text = Array(leagues.keys)[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell {
            let i = tableView.indexPath(for: cell)!.row
            let selectedCell = tableView.cellForRow(at: IndexPath(row: i, section: 0)) as! LeagueCell
            selectedLeague = selectedCell.leagueLabel.text
            
            if segue.identifier == "showTeams" {
                let teamViewController = segue.destination as! TeamViewController
                teamViewController.teams = leagues[selectedLeague!]!
            }
        }
    }
    
}
