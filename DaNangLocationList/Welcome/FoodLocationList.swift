//
//  FoodLocationList.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//

import SwiftUI
struct FoodLocationList: View {
    var body: some View {
        NavigationView {
            List(foodLocations){
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

struct FoodLocationList_Previews: PreviewProvider {
    static var previews: some View {
        FoodLocationList()
    }
}
