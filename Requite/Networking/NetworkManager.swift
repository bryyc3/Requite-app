//
//  NetworkManager.swift
//  Requite
//
//  Created by Bryce King on 11/5/26.
//

import Foundation


func executeRequest(query: String) async throws -> ProgramSearchResults {
    var components = URLComponents(string: "http://localhost:8000/member/program-search")!
    
    components.queryItems = [URLQueryItem(name: "query", value: query)]
    
    guard let url = components.url else {
        throw URLError(.badURL)
    }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    let info = JSONDecoder()
    let decoded = try info.decode(ProgramSearchResults.self, from: data)
    
    return decoded
}
//struct NetworkManager {
//}
