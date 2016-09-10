//
//  CustomTVCell.swift
//  CustomTableViewCell
//
//  Created by Hoàng Minh Thành on 9/8/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit

class CustomTVCell: UITableViewCell {
    
//    @IBOutlet weak var labelFootballClub: UILabel!
//    @IBOutlet weak var imageViewLogo: UIImageView!
//    @IBOutlet weak var labelStadium: UILabel!
//    @IBOutlet weak var imageViewStarRating: UIImageView!
    
    @IBOutlet weak var labelFootballClub: UILabel!
    @IBOutlet weak var labelStadium: UILabel!
    @IBOutlet weak var imageViewLogo: UIImageView!
    @IBOutlet weak var imageViewStarRating: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
