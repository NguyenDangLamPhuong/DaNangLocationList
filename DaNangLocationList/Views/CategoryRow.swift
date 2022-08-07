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

struct CategoryRow: View {
    var category: Category
    
    var body: some View {
        
        HStack {
            category.image
                .resizable()
                .aspectRatio(contentMode: .fit)
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
