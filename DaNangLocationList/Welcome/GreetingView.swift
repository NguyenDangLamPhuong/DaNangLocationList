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

struct GreetingView: View {
    @Binding var active: Bool
    var body: some View {
        ZStack{
            Image("Danang")
                .resizable()
                .aspectRatio(contentMode: .fill)
                //.frame(width: 450)
            
            VStack(spacing: 100){
                Spacer()
                VStack(spacing: 0) {
                    Text("Travel as")
                        .font(.system(size:60, design: .rounded))
                      .fontWeight(.heavy)
                      .foregroundColor(Color(uiColor: UIColor(red: 0.25, green: 0.25, blue: 0.26, alpha: 1.00)))
                    Text("Local")
                      .font(.system(size: 60, design: .rounded))
                      .fontWeight(.heavy)
                      .foregroundColor(Color(uiColor: UIColor(red: 0.87, green: 0.45, blue: 0.06, alpha: 1.00)))
                }
                Spacer()
                Spacer()
                Spacer()
                
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                      .fill(Color(uiColor: UIColor(red: 0.82, green: 0.53, blue: 0.30, alpha: 1.00)))
                      .padding(8)
                      .frame( width: 400, height:80)
                      .overlay(Text("Let's go")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white))
                })
                
            }
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}

