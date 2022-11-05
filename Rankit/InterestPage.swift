//
//  InterestPage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 01/04/1444 AH.
//

import SwiftUI
struct InterestPage : View {
    @State var isPresenting = false

    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    HStack{
                        Spacer()
                            .padding(30)
                        NavigationLink {HostingTabBar().navigationBarBackButtonHidden(true)}
                    label: {
                        Text("Skip")
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                            .font(.title2)
                    }
                    }
                    .padding(30)
                    Text("Select Your Interest")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 600)
                        .font(.title)
                }
                VStack{
                    HStack{
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 150, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image1").resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Technology")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                

                        }
                        
                        
                        
                        
                        
                        
                        
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 186, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image2").resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Workshop")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                        }
                    }
                    .padding(5)
                    HStack{
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 145, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image3").resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Art")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                        }
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 98, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image4").resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Sport")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                        }
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 90, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image5").resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Beauty")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                        }
                    }
                    .padding(5)
                    HStack{
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 101, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image6").resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Music")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                        }
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 99, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image7")
                                    .resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Game")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                        }
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 115, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image8").resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Business")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                        }
                    }
                    .padding(5)
                    HStack{
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 150, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image9").resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Cultural")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                        }
                        ZStack{
                            Button{}
                        label:{
    //                        Text("Reviews")
    //                            .fontWeight(.bold)
                        }.frame(width: 180, height: 45)
                                .foregroundColor(.white)
                                .background(Image("Image10").resizable().scaledToFill().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                                .cornerRadius(8)
                            Text("Fashion")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                        }
                    }
                    .padding(5)
                    .padding(.bottom, 30.0)
                    Button("LET'S GO!") {
                                        isPresenting = true
                                    }.frame(width: 300)
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(7)
                        .foregroundColor(.white)
                        .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                        .cornerRadius(14)
                                    NavigationLink(destination: HostingTabBar().navigationBarBackButtonHidden(true), isActive: $isPresenting) { }
                }
                .padding(.top, -10.0)
                           
                        }
                        
                    }
                   
                }
                
            }

struct InterestPage_Previews: PreviewProvider {
    static var previews: some View {
        InterestPage()
    }
}


        
    
