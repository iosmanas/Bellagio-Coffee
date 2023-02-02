//
//  UIViewController.swift
//  Bellagio Coffee
//
//  Created by new on 2/2/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}
