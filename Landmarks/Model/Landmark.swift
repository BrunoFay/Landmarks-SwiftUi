//
//  Landmark.swift
//  Landmarks
//
//  Created by bruno alves fay on 27/04/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
  
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }

    private var coordinates: Coordinates
    var locationCoodinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D( latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
  
}