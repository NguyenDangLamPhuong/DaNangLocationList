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
import CoreLocation
struct LocationCard: View {
    var location: Location
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    LocationImage(image: location.image)
                    Text(location.name + " " + location.icon)
                        .font(.system(size: 30, design: .rounded))
                        .bold()
                        .foregroundColor(Color(uiColor: UIColor(red: 0.25, green: 0.25, blue: 0.26, alpha: 1.00)))
                    Text(" 📍 "+location.address)
                        .font(.system(size: 14))
                        .foregroundColor(Color(uiColor: ColorConstants.lightGrey))
                        .frame(width: 350, alignment: .leading)
                            .padding(10)
                        .offset(y: -5)
                    Text(" ☎️ "+location.phone)
                        .font(.system(size: 14))
                        .foregroundColor(Color(uiColor: ColorConstants.lightGrey))
                        .frame(width: 350, alignment: .leading)
                            .padding(10)
                        .offset(y: -15)
                    Text(" 🔗 "+location.link)
                        .font(.system(size: 14))
                        .foregroundColor(Color(uiColor: ColorConstants.lightGrey))
                        .frame(width: 350, alignment: .leading)
                            .padding(10)
                        .offset(y: -25)
                    Text("Descriptions")
                        .bold()
                        .font(.system(size: 16, design: .rounded))
                        .foregroundColor(Color(uiColor: ColorConstants.lightGrey))
                        .padding(10)
                        .offset(y: -5)
                        .frame(width: 350, alignment: .leading)
                        .offset(y: -15)
                    Text(location.description)
                        .font(.system(size: 14))
                        .foregroundColor(Color(uiColor: ColorConstants.lightGrey))
                        .padding(10)
                        .offset(y: -25)
                        .frame(width: 350, alignment: .leading)
                    Text("Location")
                        .bold()
                        .font(.system(size: 16, design: .rounded))
                        .foregroundColor(Color(uiColor: ColorConstants.lightGrey))
                        .padding(10)
                        .offset(y: -30)
                        .frame(width: 350, alignment: .leading)
                    
                        MapView(coordinate: location.locationCoordinate)
                            .edgesIgnoringSafeArea(.top)
                            .frame(height: 380)
                    
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LocationCard_Previews: PreviewProvider {
    static var previews: some View {
        LocationCard(location : locations[0])
    }
}
