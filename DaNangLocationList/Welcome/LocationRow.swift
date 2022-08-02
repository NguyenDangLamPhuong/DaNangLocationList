//
//  LocationRow.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//

import SwiftUI

struct LocationRow: View {
    var location: Location
    
    var body: some View {
        HStack {
            location.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(location.name)
        }
    }
}

struct LocationRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LocationRow(location: locations[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LocationRow(location: locations[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
