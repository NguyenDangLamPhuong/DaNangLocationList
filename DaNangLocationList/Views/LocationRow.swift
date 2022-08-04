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

struct LocationRow: View {
    var location: Location
    
    var body: some View {
        HStack {
            location.image
                .resizable()
                .frame(width: 200, height: 150)
                .padding(10)
                //.aspectRatio(contentMode: .fit)
            VStack{
                Text(location.name + " " + location.icon)
                    .bold()
                    .font(.system(size: 16, design: .rounded))
                    .foregroundColor(Color(uiColor: UIColor(red: 0.25, green: 0.25, blue: 0.26, alpha: 1.00)))
                    .frame(alignment: .leading)
//                Text(location.name)
//                    .font(.system(size: 14))
//                    .foregroundColor(Color(uiColor: UIColor(red: 0.45, green: 0.47, blue: 0.48, alpha: 1.00)))
//                    .frame(alignment: .leading)

                //Text(location.name)
            }
            
        }
        
    }
}

struct LocationRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LocationRow(location: locations[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LocationRow(location: locations[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
