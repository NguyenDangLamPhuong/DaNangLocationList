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

struct LocationRow: View {
    var location: Location
    
    var body: some View {
        HStack {
            location.image
                .resizable()
                .frame(width: 200, height: 150)
                .padding(10)
            VStack{
                //show location name and related icon
                Text(location.name + " " + location.icon)
                    .bold()
                    .font(.system(size: 16, design: .rounded))
                    .foregroundColor(Color(uiColor: UIColor(red: 0.25, green: 0.25, blue: 0.26, alpha: 1.00)))
                    .frame(alignment: .leading)
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
