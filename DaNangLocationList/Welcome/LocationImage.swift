//
//  LocationImage.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//

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

