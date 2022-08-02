//
//  InformationView.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//

import SwiftUI

struct InformationView: View {
    
    let text: String
    let url: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(ColorConstants.rmitRed)
                Link(destination: URL(string: url)!) {
                    Text(text)
                        .foregroundColor(.black)
                }
                
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorConstants.rmitBlue
                .edgesIgnoringSafeArea(.all)
            VStack{
                InformationView(text: "123456789", url: "tel:123456789", imageName: "phone.fill")
                InformationView(text: "email@gmail.com", url: "mailto:email@gmail.com", imageName: "envelope.fill")
            }
        }
        InformationView(text: "123456789", url: "tel:123456789", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
        InformationView(text: "email@gmail.com", url: "mailto:email@gmail.com", imageName: "envelope.fill")
            .previewLayout(.sizeThatFits)
    }
}
