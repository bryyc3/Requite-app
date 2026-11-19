//
//  ProgramViewModel.swift
//  Requite
//
//  Created by Bryce King on 11/15/26.
//

import Foundation
import Observation

@Observable
class ProgramViewModel {
    let id: String
    let isMember: Bool
    var business: BusinessInfo?
    
    init(id: String, ismember: Bool){
        self.id = id
        self.isMember = ismember
    }
    
    func getBusinessInfo() async {
        do {
            let request = Dashboard.getProgram(businessId: id)
            business = try await NetworkManager.execute(endpoint: request, auth: false, type: BusinessInfo.self)
        } catch is CancellationError{
            
        } catch {
            print(error)
        }
    }
}
