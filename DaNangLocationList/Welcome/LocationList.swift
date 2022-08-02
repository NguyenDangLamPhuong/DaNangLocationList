//
//  LocationList.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//

import SwiftUI
struct LocationList: View {
    var body: some View {
        NavigationView {
            List(locations){
                location in
                NavigationLink{
                    LocationCard(location: location)
                } label: {
                    LocationRow(location: location)
                }
                .navigationTitle("Location List 📍")
            }
        }
        
    }
}

struct LocationList_Previews: PreviewProvider {
    static var previews: some View {
        LocationList()
    }
}
