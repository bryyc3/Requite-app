//
//  NetworkManager.swift
//  Requite
//
//  Created by Bryce King on 11/5/26.
//

import Foundation

struct NetworkManager {
    static func execute<T: Codable>(endpoint: Endpoint, auth: Bool, type: T.Type) async throws -> T?{
        var request = try endpoint.urlRequest()
        
        
        if(auth) {
            //auth code
        }
        
        let (data, response) = try await URLSession.shared.data(for: request)
        print(response)
        guard let response = response as? HTTPURLResponse else {
            throw NetworkErrror.noResponse
        }
        
        switch response.statusCode {
            case 200:
                do {
                    let decoder = JSONDecoder()
                    return try decoder.decode(T.self, from: data)
                } catch {
                    throw NetworkErrror.decodingError
                }
            default:
                throw NetworkErrror.invalidResponse
        }
    }
}
