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
        leagues.updateValue([
            "FC Barcelona"    , "Atlético de Madrid",
            "Sevilla FC"      , "Real Madrid",
            "D. Alavés"       , "Getafe CF",
            "Real Betis"      , "Real Sociedad",
            "Girona FC"       , "RCD Espanyol",
            "Valencia CF"     , "Levante UD",
            "R. Valladolid CF", "CD Leganés",
            "Athletic Club"   , "SD Eibar",
            "RC Celta"        , "Rayo Vallecano",
            "Villarreal CF"   , "SD Huesca"
            ], forKey: "Spain")
        leagues.updateValue([
            "Borussia Dortmund"       , "FC Bayern München",
            "Borussia Mönchengladbach", "RB Leipzig",
            "VfL Wolfsburg"           , "Eintracht Frankfurt",
            "TSG 1899 Hoffenheim"     , "Hertha Berlin",
            "Bayer 04 Leverkusen"     , "SV Werder Bremen",
            "Sport-Club Freiburg"     , "1. FSV Mainz 05",
            "FC Schalke 04"           , "Fortuna Düsseldorf",
            "FC Augsburg"             , "VfB Stuttgart",
            "Hannover 96"             , "1. FC Nürnberg"
            ], forKey: "Germany")
        leagues.updateValue([
            "Juventus" , "Napoli",
            "Inter"    , "Lazio",
            "Milan"    , "Roma",
            "Sampdoria", "Atalanta",
            "Torino"   , "Fiorentina",
            "Sassuolo" , "Parma",
            "Cagliari" , "Genoa",
            "Udinese"  , "Spal",
            "Empoli"   , "Bologna",
            "Frosinone", "Chievoverona"
            ], forKey: "Italy")
        leagues.updateValue([
            "Paris Sanit-Germain"   , "LOSC",
            "Olympique Lyonnais"    , "AS Saint-Etienne",
            "Montpellier Hérault SC", "RC Starsbourg Alsace",
            "Stade Rennais FC"      , "OGC Nice",
            "Olympique de Marseille", "Stade de Reims",
            "Girondins de Bordeaux" , "FC Nates",
            "Nîmes Olympique"       , "Toulouse FC",
            "Angers SCO"            , "SM Caen",
            "Amiens SC"             , "Dijon FCO",
            "AS Monaco"             , "EA Guingamp"
            ], forKey: "France")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leagues.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leagueCell", for: indexPath)
        cell.textLabel?.text = Array(leagues.keys)[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTeams" {
            let vc = segue.destination as! TeamViewController
            vc.teams = leagues["England"]!
        }
    }
    
}
