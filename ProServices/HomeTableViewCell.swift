//
//  HomeTableViewCell.swift
//  ProServices
//
//  Created by Rajesh Kannan M on 7/4/17.
//  Copyright © 2017 Rajesh Kannan. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    //MARK:- Outlets
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var currentStatusLabel: UILabel!
    @IBOutlet weak var estimateLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var workOrderLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var trackButton: UIButton!
    @IBOutlet weak var onlineLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
