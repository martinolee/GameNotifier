//
//  TeamCell.swift
//  GameNotifier
//
//  Created by 이수한 on 19/01/2019.
//  Copyright © 2019 Lee Soo-Han. All rights reserved.
//

import UIKit

class TeamCell: UITableViewCell {
    
    @IBOutlet var teamLabel: UILabel!
    @IBOutlet var bookmark: UIButton!
    
    var isBookmark: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func startBookmark(_ sender: Any) {
        if isBookmark {
            bookmark.setImage(UIImage(named: "emptyStar"), for: .normal)
            isBookmark = false
        } else {
            bookmark.setImage(UIImage(named: "filledStar"), for: .normal)
            isBookmark = true
        }
    }
    
}
