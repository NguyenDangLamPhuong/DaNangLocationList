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
            
            var _ = print(categories)
            List(categories){
                category in
                NavigationLink{
                    switch category.type{
                    case .travel:
                        LocationList()
                    case .food:
                        FoodLocationList()
                    case .bar:
                        DrinkLocationList()
                    default:
                        Text("Oh noooo!")
                    }
//                    switch category.id{
//                    case 1:
//                        LocationList()
//                    case 2:
//                        FoodLocationList()
//                    case 3:
//                        DrinkLocationList()
//                    default:
//                        Text("Oh noooo!")
//                    }
                    
                } label: {

                    CategoryRow(category: category)
                }
                .navigationTitle("Categories 🔖")

            }
        }
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
