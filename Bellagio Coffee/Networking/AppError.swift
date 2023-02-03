//
//  AppError.swift
//  Bellagio Coffee
//
//  Created by new on 3/2/23.
//

import Foundation

enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invaliURL
    case serverError(String)
    var errorDescription: String? {
        switch self {
            
        case .errorDecoding:
            return "Responce couldn't be decoded"
        case .unknownError:
            return "Bruuuuuh!!! Ihave no idea about it)))"
        case .invaliURL:
            return "Heyyyy man give me a valid <URL> okay?"
        case .serverError(let error):
            return error
        }
    }
}
