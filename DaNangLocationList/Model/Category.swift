/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Dang Lam Phuong
  ID: s3754105
  Created  date: 24/07/2022
  Last modified: 05/08/2022
 Acknowledgement:
   - E. Konstantinidis, "Convert HEX & RGB colors to UIColor", Uicolor.io, 2022. [Online]. Available: https://www.uicolor.io/. [Accessed: 04- Aug- 2022].
   - "App Icon Generator", Appicon.co, 2022. [Online]. Available: https://appicon.co/#image-sets. [Accessed: 04- Aug- 2022].
*/


import Foundation
import SwiftUI

//Create Category Model
struct Category: Identifiable, Codable{
    var id: Int
    var name: String
    var icon: String
    var type: LocationType
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

enum LocationType: String, Codable{
    case travel="travel"
    case food="food"
    case bar="bar"
}


