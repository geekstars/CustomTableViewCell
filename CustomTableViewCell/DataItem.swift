//
//  DataItem.swift
//  CustomTableViewCell
//
//  Created by Hoàng Minh Thành on 9/8/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit
class DataItem {
    var imageLogo : UIImage!
    var nameFootballClub : String!
    var nameStadium : String!
    var imageStarRating : UIImage!
    init(nameFC:String,nameStd:String,imgLogo:String,imgStar:Int)
    {
        self.imageLogo = UIImage(named: imgLogo)
        self.imageStarRating = UIImage(named: "\(imgStar)star.png")
        self.nameStadium = "Stadium : \(nameStd)"
        self.nameFootballClub = nameFC
    }
}