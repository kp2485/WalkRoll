//
//  WalkRollModel.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/22/22.
//

import Foundation

struct WalkRoll: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var description: String
//    var date: Date
//    var time: Date
//    var openToPublic: Bool
//    var Recurring: Bool
    let latitude: Double
    let longitude: Double
}
