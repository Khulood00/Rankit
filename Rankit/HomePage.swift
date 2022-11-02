//
//  HomePage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 02/04/1444 AH.
//
import Foundation
import SwiftUI
import UIKit


struct Box{
    var id:Int
    let imageURL: String
}

struct HomePage: View {
    
    let boxes:[Box] = [
        Box(id : 0 , imageURL:"0"),
        Box(id : 1 , imageURL:"1"),
        Box(id : 2 , imageURL:"2"),
    ]
    @State var searchQuery = ""
    @State private var selection = 2
    @State private var selectedTab = 0

    var body: some View {
      NavigationView{

        HStack{
                VStack{
                        VStack{
                            Text("Just For You")
                                .padding(.trailing, 260.0)
                            ScrollView(.horizontal){
                                HStack(spacing: 10){
                                    Divider()
                                    BoxView()
                                }
                            }
                        }
                    Divider()

                    Text("All Categories")
                        .padding(.trailing, 240.0)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            NavigationLink(destination: CampsPage().navigationBarBackButtonHidden(true)){

                                ZStack{
                                    Text("Camps")
                                        .foregroundColor(.white)
                                        .frame(width: 150,height: 120)
                                        .background(
                                            RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color(red: 94/255, green: 126/255, blue: 152/255))
                                        )
                                }

                                ZStack{
                                    NavigationLink(destination:EventsPage()){
                                        Text("Events")
                                            .foregroundColor(.white)
                                            .frame(width: 150,height: 120)
                                            .background(
                                                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color(red: 94/255, green: 126/255, blue: 152/255))
                                            )
                                    }
                                }
                                ZStack{
                                    NavigationLink(destination:EventsPage()){
                                        Text("Sport")
                                            .foregroundColor(.white)
                                            .frame(width: 150,height: 120)
                                            .background(
                                                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color(red: 94/255, green: 126/255, blue: 152/255))
                                            )
                                    }
                                }
                                ZStack{
                                    NavigationLink(destination:EventsPage()){
                                        Text("Art")
                                            .foregroundColor(.white)
                                            .frame(width: 150,height: 120)
                                            .background(
                                                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color(red: 94/255, green: 126/255, blue: 152/255))
                                            )
                                    }
                                }
                                    
                            }
                        }
                    }
                    .padding()
                }
                
                
                .searchable(text: $searchQuery)
                .navigationTitle("Home")
              //  .navigationBarTitleDisplayMode(.inline)
            }
       }
    }
    struct BoxView: View{
        var body : some View{
            
            HStack{
                Image("0")
                    .resizable()
                    .frame(width: 186,height: 320)
                    .cornerRadius(15)
                
                Image("1")
                    .resizable()
                    .frame(width: 186,height: 320)
                    .cornerRadius(15)
                
                Image("2")
                    .resizable()
                    .frame(width: 186,height: 320)
                    .cornerRadius(15)
            }
        }
    }
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
}
