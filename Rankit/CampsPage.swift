//
//  CampsPage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 05/04/1444 AH.
//

import SwiftUI
import UIKit
import Foundation


struct CampsItems: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var city: String
}
struct CampsPage: View {
    
    let modelData: [CampsItems] = [
    CampsItems(image: "imag1", title: "Apple Developer Academy", city: "Riyadh"),
    CampsItems(image: "imag2", title: "Saudi Digital Academy", city: "Riyadh"),
    CampsItems(image: "imag3", title: "SADAIA Data Science", city: "Riyadh"),
    CampsItems(image: "imag4", title: "Tuwaiq CyperSecurity", city: "Riyadh"),

    ]

    @State var searchQuery = ""
    var body: some View {

        NavigationView{
                 VStack{
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                            
                            NavigationLink(destination:EventPage().navigationBarBackButtonHidden(false)){
                                Image("img1")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                    .padding(.leading)
                                    .shadow(radius: 5)
                                  .frame(width:345, height: 200)
                              
                            }
                            Image("img2")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(15)
                                .padding(.trailing)
                                .shadow(radius: 5)
                             .frame(width:345, height: 200)
                                }
                        .searchable(text: $searchQuery)
                            
                    }
                    .padding()

            VStack {
                
                Divider()
                Text("Popular Techniqal Camps")
                    .font(.headline)
                    .font(Font.custom("SF Comact", size: 20))
                    .foregroundColor(Color.black)
                    .padding(.trailing, 125.0)
                    .bold()
                Divider()
                
            }
            List(modelData) { items in

                HStack {
                    
                   Image(items.image)
                        .resizable()
                        .frame(width: 100,height: 100)
                        .cornerRadius(15)
                       .shadow(radius: 5)

                
                    VStack(alignment: .leading){
                        Text(items.title)
                        .font(Font.custom("SF Comact", size: 14))
                        .padding(.bottom, 7.0)
                        .padding(.leading, 20)

                        
                        HStack{
                            
                            Image(systemName: "mappin.and.ellipse")
                                .padding(.bottom, 3.0)
                                .padding(.leading, 20.0)

                                .foregroundStyle(.gray)
                                     .font(.system(size: 14.0))
                            
                            Text(items.city)
                                .font(Font.custom("SF Comact", size: 10))
                        }
                        Text(" ⭐️⭐️⭐️⭐️")
                            .padding(.leading, 20.0)

                            .font(Font.custom("SF Comact", size: 10))
                    }

                    }
        }
        }
            
    }
        
    }
    
}
struct CampsPage_Previews: PreviewProvider {
    static var previews: some View {
        CampsPage()
    }
}



