//
//  Location.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//
import Foundation
import SwiftUI
import CoreLocation

struct Location: Identifiable, Codable{
    var id: Int
    var name: String
    var phone: String
    var address: String
    var description: String
    var icon: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}

