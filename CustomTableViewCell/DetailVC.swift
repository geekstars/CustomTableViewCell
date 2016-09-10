//
//  DetailVC.swift
//  CustomTableViewCell
//
//  Created by Hoàng Minh Thành on 9/8/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    var stringTitle:String!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var background: UIView!
    override func viewDidLoad() {
        self.title = stringTitle
        let index = stringTitle.startIndex.advancedBy(10)
        self.imageView.image = UIImage(named: "\(stringTitle.substringFromIndex(index)).jpg")
        self.background.backgroundColor = UIColor.blackColor()
    }
}
