//
//  HomePage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 02/04/1444 AH.
//
import Foundation
import SwiftUI
import UIKit


struct Event: Identifiable {
    let id: Int
    let name: String
    let color: Color
}

let events = [
    Event(id: 0, name: "Tech Camps",  color: Color(red: 94/255, green: 126/255, blue: 152/255)),
    Event(id: 1, name: "Events",  color: Color(red: 94/255, green: 126/255, blue: 152/255)),
    Event(id: 2, name: "Art",  color: Color(red: 94/255, green: 126/255, blue: 152/255)),
    Event(id: 3, name: "Sport", color: Color(red: 94/255, green: 126/255, blue: 152/255)),
]
struct Box{
    var id:Int
    let imageURL: String
}
struct HomePage: View {
    @State private var selectedTab = 0

    let boxes:[Box] = [
        Box(id : 0 , imageURL:"0"),
        Box(id : 1 , imageURL:"1"),
       

    ]
    
    @State var searchQuery = ""
    @State private var selection = 2

    var body: some View {
            ZStack{
                NavigationView{
                    VStack{
                        NavigationView{
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
                            
                        }
                        Text("All Categories")
                            .padding(.trailing, 240.0)
                        ScrollView(.horizontal) {
                                    HStack {
                                        ForEach(events) { event in
                                            VStack {
                                            
                                                Text(event.name)
                                                    .font(.system(.caption))
                                                    .foregroundColor(.white)
                                                    
                                            }
                                            .padding(40)
                                            .background(event.color)
                                            .cornerRadius(15)
                                        }
                                    }
                                }
                                .padding()
                    }
                    
                    
                    .searchable(text: $searchQuery)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
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
            }
        }
    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
