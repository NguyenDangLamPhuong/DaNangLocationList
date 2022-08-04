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
import CoreLocation
struct LocationCard: View {
    var location: Location
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    LocationImage(image: location.image)
                        //.offset(y: -100)
                        //.padding(.bottom, -100)
                    Text(location.name + " " + location.icon)
                        .font(.system(size: 30, design: .rounded))
                        .bold()
                        .foregroundColor(Color(uiColor: UIColor(red: 0.25, green: 0.25, blue: 0.26, alpha: 1.00)))
                    Text("📍 "+location.address)
                        .font(.system(size: 14))
                        .foregroundColor(Color(uiColor: UIColor(red: 0.45, green: 0.47, blue: 0.48, alpha: 1.00)))
                        .frame(width: 380, alignment: .leading)
                            .padding(10)
                        .offset(y: -5)
                    Text("☎️ "+location.phone)
                        .font(.system(size: 14))
                        .foregroundColor(Color(uiColor: UIColor(red: 0.45, green: 0.47, blue: 0.48, alpha: 1.00)))
                        .frame(width: 380, alignment: .leading)
                            .padding(10)
                        .offset(y: -15)
                    Text("🔗 "+location.link)
                        .font(.system(size: 14))
                        .foregroundColor(Color(uiColor: UIColor(red: 0.45, green: 0.47, blue: 0.48, alpha: 1.00)))
                        .frame(width: 380, alignment: .leading)
                            .padding(10)
                        .offset(y: -25)
                    Text("Descriptions")
                        .bold()
                        .font(.system(size: 16, design: .rounded))
                        .foregroundColor(Color(uiColor: UIColor(red: 0.25, green: 0.25, blue: 0.26, alpha: 1.00)))
                        .padding(10)
                        .offset(y: -5)
                        .frame(width: 380, alignment: .leading)
                        .offset(y: -25)
                    Text(location.description)
                        .font(.system(size: 14))
                        .foregroundColor(Color(uiColor: UIColor(red: 0.45, green: 0.47, blue: 0.48, alpha: 1.00)))
                        .padding(10)
                        .offset(y: -35)
                        .frame(width: 380, alignment: .leading)
                    Text("Location")
                        .bold()
                        .font(.system(size: 16, design: .rounded))
                        .foregroundColor(Color(uiColor: UIColor(red: 0.25, green: 0.25, blue: 0.26, alpha: 1.00)))
                        .padding(10)
                        .offset(y: -25)
                        .frame(width: 380, alignment: .leading)
                    
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
