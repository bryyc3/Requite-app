//
//  BusinessInfo.swift
//  Requite
//
//  Created by Bryce King on 11/5/26.
//

import Foundation


struct ProgramSearchResults: Codable{
    let programs: [BusinessInfo]
}

struct BusinessInfo: Codable, Hashable {
    let id: String
    let name: String
    let location: String
    let member: Bool?
    let tiers: [Tier]?
    let rewards: [Reward]?
}

struct Tier: Codable, Hashable {
    let id: String
    let name: String
    let points: Int?
    let exclusiveRewards: [Reward]?
}

struct Reward: Codable, Hashable {
    let id: String
    let name: String
    let description: String
    let cost: Int
    let tier: Tier?
}
