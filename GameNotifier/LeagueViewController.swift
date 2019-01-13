//
//  LeagueViewController.swift
//  GameNotifier
//
//  Created by 이수한 on 07/01/2019.
//  Copyright © 2019 Lee Soo-Han. All rights reserved.
//

import UIKit

class LeagueViewController: UITableViewController {
    
    var leagues = Dictionary<String, Array<String>>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leagues.updateValue([
            "Liverpool"               , "Manchester City",
            "Tottenham Hotspur"       , "Chelsea",
            "Arsenal"                 , "Manchester United",
            "Leicester City"          , "Watford",
            "Wolverhampton Wanderers" , "West Ham United",
            "Everton"                 , "Bournemouth",
            "Brighton and Hove Albion", "Crystal Palace",
            "Newcastle United"        , "Burnley",
            "Cardiff City"            , "Southampton",
            "Fulham"                  , "Huddersfield Town"
            ], forKey: "England")
        leagues.updateValue([], forKey: "Spain")
        leagues.updateValue([], forKey: "Germany")
        leagues.updateValue([], forKey: "Italy")
        leagues.updateValue([], forKey: "France")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leagues.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "leagueCell")
        cell.textLabel?.text = Array(leagues.keys)[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTeams" {
            let vc = segue.destination as! TeamViewController
        }
    }
    
}
