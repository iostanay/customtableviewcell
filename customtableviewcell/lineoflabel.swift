//
//  lineoflabel.swift
//  customtableviewcell
//
//  Created by Tanay Bhattacharjee on 19/04/18.
//  Copyright © 2018 none. All rights reserved.
//

import Foundation
import UIKit
extension UILabel {
    var numberOfVisibleLines: Int {
        let textSize = CGSize(width: CGFloat(self.frame.size.width), height: CGFloat(MAXFLOAT))
        let rHeight: Int = lroundf(Float(self.sizeThatFits(textSize).height))
        let charSize: Int = lroundf(Float(self.font.pointSize))
        return rHeight / charSize
    }
}
