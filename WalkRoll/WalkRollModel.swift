//
//  WalkRollModel.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/22/22.
//

import Foundation

struct WalkRoll: Identifiable, Codable, Equatable {
    let id: UUID = UUID()
    var name: String
    var description: String
//    var distanceToMe: Double
//    var distanceOfWR: Double
//    var date: Date
//    var time: Date
//    var openToPublic: Bool
//    var Recurring: Bool
    let latitude: Double
    let longitude: Double
    
    static let testData = [
        WalkRoll(name: "Boston-Edison AM Crew", description: "This is a Walk & Roll in the Historic Boston-Edison Neighborhood. This area consists of over 900 homes built on four east/west streets, making it one of the largest residential historic districts in the nation. Notable past residents include Henry Ford & Joe Louis. This is a recurring walk at 10 am, every Tuesday & Thursday.", latitude: 42.3799, longitude: -83.1019),
        WalkRoll(name: "Sacred Heart Track", description: "This is a Walk & Roll located at the Historic Roman Catholic church complex listed as one of the National Register of Historic Places in 1980. This site has a sizable track consisting of recurring walks at 6.00 pm, every Wednesday and Friday.", latitude: 42.3748, longitude: -83.1105),
        WalkRoll(name: "Central High School Track", description: "Athletic Track of Historic Central HS, Detroit - located in one of the oldest communities of Detroit, and is the longest-serving public school in the City. Near Midtown Detroit.", latitude: 42.3836, longitude: -83.1118),
        WalkRoll(name: "Grosse Pointe Panthers", description: "This is a Walk & Roll in the Historic Grosse Pointe Neighborhood. Grosse Pointe, recognized for its historic reputation for scenery and landscape, has grown from a colonial outpost and a fertile area for small orchard owners and farmers to a coastal community with prime real estate chosen for grand estates. This is a reccuring walk at 10 am, every Wednesday & Friday.", latitude: 42.3861, longitude: -82.9119),
        WalkRoll(name: "Palmer Park Walk & Roll", description: "Palmer Park is comprised of 296 acres of lawns and historic woodlands, tennis courts, splash park, hiking and biking trails, Lake Frances and its lighthouse, an historic log cabin, the Detroit Mounted Police and more. Located in West Detroit off Woodward Avenue between McNichols & Seven Mile Road. It has been a treasured nature park and recreation site for more than 100 years.", latitude: 42.4240, longitude: -83.1140)
    ]
}
