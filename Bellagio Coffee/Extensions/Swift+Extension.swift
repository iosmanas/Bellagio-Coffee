//
//  Swift+Extension.swift
//  Bellagio Coffee
//
//  Created by new on 1/2/23.
//

import Foundation


extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
