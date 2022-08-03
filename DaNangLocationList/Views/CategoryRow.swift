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

struct CategoryRow: View {
    var category: Category
    
    var body: some View {
        
        HStack {
            category.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.frame( height: 100)
            //Text(category.name)
        }
     
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CategoryRow(category: categories[0])
                .previewLayout(.fixed(width: 300, height: 70))
            CategoryRow(category: categories[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
