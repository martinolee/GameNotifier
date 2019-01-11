//
//  TeamsViewController.swift
//  GameNotifier
//
//  Created by 이수한 on 07/01/2019.
//  Copyright © 2019 Lee Soo-Han. All rights reserved.
//

import UIKit

class TeamsViewController: UITableViewController {
    
    let teams: Dictionary<String, String> = [
        "PL": "Liverpool"               , "PL": "Manchester City",
        "PL": "Tottenham Hotspur"       , "PL": "Chelsea",
        "PL": "Arsenal"                 , "PL": "Manchester United",
        "PL": "Leicester City"          , "PL": "Watford",
        "PL": "Wolverhampton Wanderers" , "PL": "West Ham United",
        "PL": "Everton"                 , "PL": "Bournemouth",
        "PL": "Brighton and Hove Albion", "PL": "Crystal Palace",
        "PL": "Newcastle United"        , "PL": "Burnley",
        "PL": "Cardiff City"            , "PL": "Southampton",
        "PL": "Fulham"                  , "PL": "Huddersfield Town"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}
