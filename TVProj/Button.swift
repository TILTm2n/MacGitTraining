//
//  Button.swift.swift
//  TVProj
//
//  Created by Eugene on 30.11.2021.
//

import UIKit

enum UIButtonBorderSide {
    case Top, Bottom, Left, Right
}

extension UIButton {
    
    func addBorder(side: UIButtonBorderSide, color: UIColor, width: CGFloat) {
        let border = CALayer()
        
        border.name = "buttonBorder"
        border.backgroundColor = color.cgColor
        
        switch side {
        case .Top: border.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: width)
        case .Bottom: border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: width)
        case .Left: border.frame = CGRect(x: 0, y: 0, width: width, height: self.frame.size.height)
        case .Right: border.frame = CGRect(x: self.frame.size.width - width, y: 0, width: width, height: self.frame.size.height)
        }
    
        
        self.layer.addSublayer(border)
    }
    
    func removeBorder() {
        for item in self.layer.sublayers! {
            if item.name == "buttonBorder" {
                item.removeFromSuperlayer()
            }
        }
    }
}
