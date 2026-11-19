//
//  DashboardViewModel.swift
//  Requite
//
//  Created by Bryce King on 11/4/26.
//

import Foundation
import Observation

@MainActor
@Observable
class DashboardViewModel {
    var searchText: String = ""
    var searching: Bool = false
    var searchResults: ProgramSearchResults?
    
    
    func businessSearch() async {
        let searchQuery = searchText.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if(searchQuery.isEmpty || searchQuery.count < 2){
            searchResults = nil
            return
        }
        do{
            try await Task.sleep(for: .milliseconds(400))
            try Task.checkCancellation()
            
            let request = Dashboard.search(search: searchQuery)
            searchResults = try await NetworkManager.execute(endpoint: request, auth: false, type: ProgramSearchResults.self)
        } catch is CancellationError{
            
        } catch {
            print(error)
        }
    }
}
