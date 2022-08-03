//
//  GreetingView.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    var body: some View {
        ZStack{
//            ColorConstants.rmitBlue.ignoresSafeArea(.all, edges: .all)
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

