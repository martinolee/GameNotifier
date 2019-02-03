//
//  FixtureCell.swift
//  GameNotifier
//
//  Created by 이수한 on 02/02/2019.
//  Copyright © 2019 Lee Soo-Han. All rights reserved.
//

import UIKit

class FixtureCell: UITableViewCell {
    @IBOutlet var homeTeamLabel: UILabel!
    @IBOutlet var awayTeamLabel: UILabel!
    @IBOutlet var fixtureTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
