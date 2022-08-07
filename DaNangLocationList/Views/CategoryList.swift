/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Dang Lam Phuong
  ID: s3754105
  Created  date: 24/07/2022
  Last modified: 05/08/2022
 Acknowledgement:
   - E. Konstantinidis, "Convert HEX & RGB colors to UIColor", Uicolor.io, 2022. [Online]. Available: https://www.uicolor.io/. [Accessed: 04- Aug- 2022].
   - "App Icon Generator", Appicon.co, 2022. [Online]. Available: https://appicon.co/#image-sets. [Accessed: 04- Aug- 2022].
*/

import SwiftUI
struct CategoryList: View {
    var body: some View {
        NavigationView {
            
            var _ = print(categories)
            List(categories){
                category in
                NavigationLink{
                    //navigate t related view based on chosen category
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
