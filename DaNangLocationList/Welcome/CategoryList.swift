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
            List(categories){
                category in
                NavigationLink{
//                    if (category.id=="1") {
                        LocationList()
//                    }
//                    if (category.id=="2") {
//                        FoodLocationList()
//                    }
                    
                } label: {
                    CategoryRow(category: category)
                }
                .navigationTitle("Category List 🔖")
            }
        }
        
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
