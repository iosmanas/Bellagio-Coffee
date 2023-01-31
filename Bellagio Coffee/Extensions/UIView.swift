//
//  UIView.swift
//  Bellagio Coffee
//
//  Created by new on 31/1/23.
//

import Foundation
import UIKit


extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        
        get{ return cornerRadius }
        set{
            self.layer.cornerRadius = newValue
        }
         
    }
}
