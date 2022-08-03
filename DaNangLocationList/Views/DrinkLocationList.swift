//
//  DrinkLocationList.swift
//  DaNangLocationList
//
//  Created by Mac on 03/08/2022.
//

import SwiftUI
struct DrinkLocationList: View {
    var body: some View {
      
        List(drinkLocations){
            location in
            NavigationLink{
                LocationCard(location: location)
            } label: {
                LocationRow(location: location)
            }
            .navigationTitle("Bar List 🍸")
        }
        
        
    }
}

struct DrinkLocationList_Previews: PreviewProvider {
    static var previews: some View {
        DrinkLocationList()
    }
}
