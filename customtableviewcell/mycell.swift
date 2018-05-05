//
//  mycell.swift
//  customtableviewcell
//
//  Created by Tanay Bhattacharjee on 19/04/18.
//  Copyright © 2018 none. All rights reserved.
//

import UIKit

class mycell: UITableViewCell {

   // @IBOutlet var myview2: UIView!
    @IBOutlet var img: UIImageView!
    @IBOutlet var mylabel: UILabel!
    @IBOutlet var myview: UIView!
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
