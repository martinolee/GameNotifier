//
//  TeamsViewController.swift
//  GameNotifier
//
//  Created by 이수한 on 07/01/2019.
//  Copyright © 2019 Lee Soo-Han. All rights reserved.
//

import UIKit

class TeamsViewController: UITableViewController {
    
    let englandTeams: Array<String> = [
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
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}
