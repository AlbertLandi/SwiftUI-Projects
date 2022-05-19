//
//  Location.swift
//  BucketlistTutorials
//
//  Created by Alberto Landi Cortiñas on 5/16/22.
//

import Foundation
import CoreLocation

struct Location: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    static let example = Location(id: UUID(), name: "Las Mercedes", description: "Neighborhood with lots of restaurants.", latitude: 10.481940, longitude: -66.861530)
    
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
