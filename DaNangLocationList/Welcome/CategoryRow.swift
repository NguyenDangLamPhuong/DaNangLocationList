//
//  CategoryRow.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//

import SwiftUI

struct CategoryRow: View {
    var category: Category
    
    var body: some View {
        HStack {
            category.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(category.name)
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
