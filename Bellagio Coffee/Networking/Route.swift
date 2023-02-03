//
//  Route.swift
//  Bellagio Coffee
//
//  Created by new on 3/2/23.
//

import Foundation
import SwiftUI

enum Route {
    static let baseUrl = "https://yummie.glitch.me"
    
    case temp
    
    var description: String {
        switch self {
        case .temp:
            return "/dish-categories"
        }
    }
}
