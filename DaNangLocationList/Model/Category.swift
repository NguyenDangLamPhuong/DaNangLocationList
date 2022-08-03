//
//  Category.swift
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Nguyen Dang Lam Phuong
  ID: s3754105
  Created  date: 24/07/2022
  Last modified: 05/08/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/


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


