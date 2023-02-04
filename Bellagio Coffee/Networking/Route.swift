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
    
    case fetchAllCategories
    
    var description: String {
        switch self {
        case .fetchAllCategories:
            return "/dish-categories"
        }
    }
}
