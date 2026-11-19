//
//  Endpoint.swift
//  Requite
//
//  Created by Bryce King on 11/5/26.
//

import Foundation


protocol Endpoint {
    var path: String { get }
    var method: HttpMethod { get }
    var headers: [String: String]? { get }
    var query: String? { get }
    var body: [String: any Encodable]? { get }
}

extension Endpoint {
    func urlRequest() throws -> URLRequest {
        var url = ApiConfig.baseUrl.appending(path: path)
        if let query, !query.isEmpty{
            url.append(queryItems: [URLQueryItem(name: "query", value: query)])
        }
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = headers
        request.httpMethod = method.rawValue
        
        if var requestBody = body {
            for (key, value) in requestBody {
                let data = try JSONEncoder().encode(value)
                guard let dataString = String(data: data, encoding: .utf8) else {
                    throw BuildRequestError.encodingError
                }
                requestBody[key] = dataString
            }//encode each dictionary value and re-pair it with key
            
            request.httpBody = try? JSONSerialization.data(withJSONObject: requestBody, options: .fragmentsAllowed)
        }
        return request
    }
}//build full request in URLRequest format
