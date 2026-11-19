//
//  Errors.swift
//  Requite
//
//  Created by Bryce King on 11/5/26.
//

import Foundation

enum BuildRequestError: Error {
    case encodingError
}

enum NetworkErrror: Error {
    case invalidURL
    case decodingError
    case noResponse
    case invalidResponse
    case unauthorized
}
