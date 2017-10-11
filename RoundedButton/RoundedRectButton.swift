//
//  RoundedRectButton.swift
//  MyNewProject
//
//  Created by Nikesh Jha on 10/11/17.
//  Copyright © 2017 Javra Software. All rights reserved.
//

import UIKit

class RoundedRectButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var selectedState: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2 / UIScreen.main.nativeScale
        layer.borderColor = UIColor.white.cgColor
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    
    override func layoutSubviews(){
        super.layoutSubviews()
        layer.cornerRadius = frame.height / 2
        backgroundColor = selectedState ? UIColor.white : UIColor.clear
        self.titleLabel?.textColor = selectedState ? UIColor.green : UIColor.white
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.selectedState = !self.selectedState
        self.layoutSubviews()
    }
}
