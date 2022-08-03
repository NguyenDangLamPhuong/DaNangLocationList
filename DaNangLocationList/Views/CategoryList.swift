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
