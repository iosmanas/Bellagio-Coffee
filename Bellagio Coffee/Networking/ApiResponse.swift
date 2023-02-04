//
//  ApiResponse.swift
//  Bellagio Coffee
//
//  Created by new on 3/2/23.
//

import Foundation


struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
    
}
