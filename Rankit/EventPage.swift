//
//  EventPage.swift
//  Rankit
//
//  Created by Khulood Alhamed on 30/10/2022.
//

import SwiftUI

struct EventPage: View {
    var body: some View {
        
        
        ZStack{
            ScrollView (.vertical){
                Image("AppleAcademy")
                    .resizable()
                    .scaledToFit()
                Text("Events")
                    .foregroundColor(Color(red: 0.334, green: 0.462, blue: 0.567))
                    .frame(width: 70.0, height: 27.0)
                    .background(RoundedRectangle(cornerRadius: 25).fill(Color(red: 0.918, green: 0.918, blue: 0.918)))
                    .padding(.top,8.0)
                    .padding(.trailing, 295.0)
                
                Text("Apple Developer Academy")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 150.0)
                    .padding(.top, 15)
                
                
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 40.0, height: 40.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.918, green: 0.918, blue: 0.918)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(8)
                        
                        Image(systemName: "clock") .imageScale(.large)
                            .foregroundColor(Color(red: 0.334, green: 0.462, blue: 0.571))
                    
                    }
                    
                    VStack{
                        Text("Sun - Thu")
                        Text("9 am - 1 pm")
                           

                    }.padding(.leading, 5)
                    
                    
                   
                    VStack{
                        Image("stars")
                            .resizable()
                            .frame(width: 110, height: 30)
                            .clipShape(Rectangle())
                            .scaledToFit()
                    }.padding(.leading, 105)
                    
                    
                }
                
                
                
                
                
                
                
                
                
                Text("About")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 303.0)
                    .padding(.top, 13.0)
                Text("Preparing aspiring entrepreneurs, developers, and designers, with the skills, resources, and training to find and create jobs in the thriving iOS app economy.")
                    .font(.body)
                    .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 15.0)
                
                Image("map" )
                    .resizable()
                    .padding(.horizontal)
                    .frame(height: 150.0)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.929, green: 0.933, blue: 0.929))
                    .cornerRadius(10)
                    .padding()
                    .scaledToFit()
                
                HStack{
                   
                    
                    
                    Button {
                        print("test")
                    } label: {
                        VStack{
                            Image(systemName: "plus.bubble")
                            Text("Reviews")
                        }
                    } .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 60)
                        .foregroundColor(.white)
                        .background(Color(red: 0.367, green: 0.49, blue: 0.598))
                        .cornerRadius(8)

                   
                    
                    
                    
                    
                    Button {
                        print("test")
                    } label: {
                        VStack{
                            Image(systemName: "heart.fill")
                            Text("Wish List")
                        }
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(red: 0.334, green: 0.462, blue: 0.567))
                        .background(Color(red: 0.918, green: 0.918, blue: 0.918))
                        .cornerRadius(8)
                    
                    
                    
                  
                    
                    Button {
                        print("test")
                    } label: {
                        VStack{
                            Image(systemName: "square.and.arrow.up")
                                
                            Text("Share")
                        }
                    } .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 60)
                        .foregroundColor(.white)
                        .background(Color(red: 0.367, green: 0.49, blue: 0.598))
                        .cornerRadius(8)
                    
                }
                
                Text("Rating & Reviews")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 200.0)
                    .padding(.top, 13.0)
                    .padding(/*@START_MENU_TOKEN@*/.top, 13.0/*@END_MENU_TOKEN@*/)
                
               
                
            }
        }
    }
    
    
    struct EventPage_Previews: PreviewProvider {
        static var previews: some View {
            EventPage()
        }
    }
}
