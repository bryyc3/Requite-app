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
    
    init(id: String, ismember: Bool){
        self.id = id
        self.isMember = ismember
    }
}
