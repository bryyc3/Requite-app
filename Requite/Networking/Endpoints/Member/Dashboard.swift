//
//  Dashboard.swift
//  Requite
//
//  Created by Bryce King on 11/5/26.
//

import Foundation

struct Dashboard: Endpoint {
    var path: String
    var method: HttpMethod
    var headers: [String : String]?
    var query: String?
    var body: [String : any Encodable]?
    
    static func search(search: String) -> Dashboard {
        return Dashboard(
            path: "member/program-search",
            method: .get,
            headers: ["Content-Type":"application/json"],
            query: search
        )
    }
    
    static func getProgram(businessId: String) -> Dashboard{
        return Dashboard(
            path: "member/program-info",
            method: .get,
            headers: ["Content-Type":"application/json"],
            query: businessId
        )
    }
}




