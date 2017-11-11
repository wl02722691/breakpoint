//
//  ShadowView.swift
//  breakpoint
//
//  Created by 張書涵 on 2017/11/11.
//  Copyright © 2017年 AliceChang. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        super.awakeFromNib()
    }
}
