//
//  Category.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//


import Foundation
import SwiftUI

//import CoreLocation
//
struct Category: Identifiable, Codable{
    var id: Int
    var name: String
    var icon: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }

}


