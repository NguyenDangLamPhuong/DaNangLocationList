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

import SwiftUI

struct LocationImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Rectangle())
//            .overlay(Rectangle().stroke(Color(.white),lineWidth: 7))
//            .shadow(radius: 7)
    }
}

struct LocationImage_Previews: PreviewProvider {
    static var previews: some View {
        LocationImage(image: Image("bana"))
    }
}

