//
//  Dish.swift
//  Bellagio Coffee
//
//  Created by new on 1/2/23.
//

import Foundation


struct Dish {
    let id: String?
    let name: String?
    let image: String?
    let description: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}


 
