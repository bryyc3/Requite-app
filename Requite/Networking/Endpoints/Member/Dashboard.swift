//
//  Dashboard.swift
//  Requite
//
//  Created by Bryce King on 11/5/26.
//

import Foundation

struct Dashboard: Endpoint {
    let baseUrl: URL
    var path: String
    var method: HttpMethod
    var headers: [String : String]?
    var body: [String : any Encodable]?
    
    static func search(query: String) -> BusinessInfo {
        
    }
}


