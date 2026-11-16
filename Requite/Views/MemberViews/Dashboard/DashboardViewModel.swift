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
            searchResults = try await executeRequest(query: searchQuery)
        } catch is CancellationError{
            
        } catch {
            print(error)
        }
    }
}
