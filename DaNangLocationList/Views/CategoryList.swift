//
//  CategoryList.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//

import SwiftUI
struct CategoryList: View {
    var body: some View {
        NavigationView {
//            List(categories){
//                category in
//                NavigationLink{
//                    LocationList()
//                } label: {
//
//                    CategoryRow(category: category)
//                }
//                .navigationTitle("Categories 🔖")
//            }
            List(){
                NavigationLink{
                        LocationList()
                    } label: {
                        HStack {
                            Image("TouristAttractionUpdate")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    
                
                NavigationLink{
                        FoodLocationList()
                    } label: {
                        HStack {
                            Image("FoodAndDrinnkUpdate")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                NavigationLink{
                        DrinkLocationList()
                    } label: {
                        HStack {
                            Image("BarUpdate")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    .navigationTitle("Categories 🔖")
                    .buttonStyle(PlainButtonStyle())
            }
        }
       // .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
