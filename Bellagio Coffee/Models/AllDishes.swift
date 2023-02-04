//
//  AllDishes.swift
//  Bellagio Coffee
//
//  Created by new on 4/2/23.
//

import Foundation


struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
    
}
