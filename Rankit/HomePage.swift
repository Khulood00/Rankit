//
//  HomePage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 02/04/1444 AH.
//
import Foundation
import SwiftUI

struct Box{
    var id:Int
    let imageURL: String
}
struct HomePage: View {
    @State private var selectedTab = 0

    let boxes:[Box] = [
        Box(id : 0 , imageURL:"0"),
        Box(id : 1 , imageURL:"1"),
        Box(id : 2 , imageURL:"2"),
        Box(id : 3 , imageURL:"3")

    ]
    
    @State var searchQuery = ""
    @State private var selection = 2

    var body: some View {
        ZStack{

            NavigationView{
                VStack{
                    NavigationView{
                        ScrollView(.horizontal){
                            HStack(spacing: 10){
                                Divider()
                                BoxView()

                            }
                        }
                    }
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
