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
struct LocationList: View {
    var body: some View {     
            List(locations){
                location in
                NavigationLink{
                    LocationCard(location: location)
                } label: {
                    LocationRow(location: location)
                }
                .navigationTitle("Attraction List 📍")
            }
                
    }
}

struct LocationList_Previews: PreviewProvider {
    static var previews: some View {
        LocationList()
    }
}
