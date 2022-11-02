//
//  EventsPage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 06/04/1444 AH.
//

//
//  CampsPage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 05/04/1444 AH.
//

import SwiftUI
import UIKit
import Foundation


struct Events: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var city: String
}
struct EventsPage: View {
    
    let modelData: [Events] = [
        Events(image: "horeca", title: "Saudi HORECA", city: "Jeddah"),
        Events(image: "imag5", title: "Black Hat", city: "Riyadh"),
        Events(image: "hack", title: "HACK", city: "Riyadh"),

    ]

    @State var searchQuery = ""
    var body: some View {

        NavigationView{
                 VStack{
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                        
                            
                            
                            Image("img5")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(15)
                                .padding(.leading, 20.0)
                                .shadow(radius: 5)
                             .frame(width:345, height: 200)
                            
                            Image("img4")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(15)
                                .shadow(radius: 5)
                              .frame(width:345, height: 200)
                                }
                    }
                    .padding()

            VStack {
                
                Divider()
                Text("Popular Events")
                    .font(.headline)
                    .font(Font.custom("SF Comact", size: 20))
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.trailing, 200.0)
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
                        Text(" ⭐️⭐️⭐️")
                            .padding(.leading, 20.0)

                            .font(Font.custom("SF Comact", size: 10))
                    }

                    }
        }
        }
                 .searchable(text: $searchQuery)
                .navigationTitle("Events")
            
    }

        
    }
    
}
struct EventsPage_Previews: PreviewProvider {
    static var previews: some View {
        EventsPage()
    }
}



