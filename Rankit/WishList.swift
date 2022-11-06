//
//  WishList.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 04/04/1444 AH.
//

import SwiftUI

struct WishList: View {
    var body: some View {
        
        VStack{
            
            Text("Wishlist")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.377, green: 0.506, blue: 0.606))
                .padding(.top, 80)
                .padding(.trailing, 220)
            
            // First wishlist
            HStack {
                Image("imag1")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .cornerRadius(15)
                   .shadow(radius: 5)
                
                VStack(alignment: .leading){
                    Text("Apple Developer Academy")
                        .font(Font.custom("SF Comact", size: 14))
                        .padding(.bottom, 7.0)
                        .padding(.leading, 20)
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .padding(.bottom, 3.0)
                            .padding(.leading, 20.0)
                            .foregroundStyle(.gray)
                            .font(.system(size: 14.0))
                        Text("Riyaadh")
                            .font(Font.custom("SF Comact", size: 10))
                    }
                    Image("5")
                        .resizable()
                        .frame(width: 103.0, height: 31.0)
                        .scaledToFit()
                        .padding(.leading, 20.0)
                        .font(Font.custom("SF Comact", size: 10))
                }
                Image(systemName: "heart.circle")
                    .foregroundColor(Color(red: 0.377, green: 0.506, blue: 0.61))
            }
            Rectangle()
                .frame(width: 350.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.885, green: 0.89, blue: 0.886)/*@END_MENU_TOKEN@*/)
                .frame(height: 1.0, alignment: .bottom)
                .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
            // Second WishList
            HStack {
                Image("horeca")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .cornerRadius(15)
                   .shadow(radius: 5)
                
                VStack(alignment: .leading){
                    Text("Saudi HORECA               ")
                        .font(Font.custom("SF Comact", size: 14))
                        .padding(.bottom, 7.0)
                        .padding(.leading, 20)
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .padding(.bottom, 3.0)
                            .padding(.leading, 20.0)
                            .foregroundStyle(.gray)
                            .font(.system(size: 14.0))
                        Text("Jeddah")
                            .font(Font.custom("SF Comact", size: 10))
                    }
                    Image("5")
                        .resizable()
                        .frame(width: 103.0, height: 31.0)
                        .scaledToFit()
                        .padding(.leading, 20.0)
                        .font(Font.custom("SF Comact", size: 10))
                    
                }
                Image(systemName: "heart.circle")
                    .foregroundColor(Color(red: 0.377, green: 0.506, blue: 0.61))
                
            }
            Rectangle()
                .frame(width: 350.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.885, green: 0.89, blue: 0.886)/*@END_MENU_TOKEN@*/)
                .frame(height: 1.0, alignment: .bottom)
                .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
            
            // Third WishList
            HStack {
                Image("imag5")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .cornerRadius(15)
                   .shadow(radius: 5)
                
                VStack(alignment: .leading){
                    Text("   BlackHat                       ")
                        .font(Font.custom("SF Comact", size: 14))
                        .padding(.bottom, 7.0)
                        .padding(.leading, 20)
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .padding(.bottom, 3.0)
                            .padding(.leading, 20.0)
                            .foregroundStyle(.gray)
                            .font(.system(size: 14.0))
                        Text("Riyaadh")
                            .font(Font.custom("SF Comact", size: 10))
                    }
                    Image("5")
                        .resizable()
                        .frame(width: 103.0, height: 31.0)
                        .scaledToFit()
                        .padding(.leading, 20.0)
                        .font(Font.custom("SF Comact", size: 10))
                    
                }
                Image(systemName: "heart.circle")
                    .foregroundColor(Color(red: 0.377, green: 0.506, blue: 0.61))
                
            }
            
            Rectangle()
                .frame(width: 350.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.885, green: 0.89, blue: 0.886)/*@END_MENU_TOKEN@*/)
                .frame(height: 1.0, alignment: .bottom)
                .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
            
            // Fourth WishList
            HStack {
                Image("imag3")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .cornerRadius(15)
                   .shadow(radius: 5)
                
                VStack(alignment: .leading){
                    Text("SADAIA Data Science   ")
                        .font(Font.custom("SF Comact", size: 14))
                        .padding(.bottom, 7.0)
                        .padding(.leading, 20)
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .padding(.bottom, 3.0)
                            .padding(.leading, 20.0)
                            .foregroundStyle(.gray)
                            .font(.system(size: 14.0))
                        Text("Riyaadh")
                            .font(Font.custom("SF Comact", size: 10))
                    }
                    Image("5")
                        .resizable()
                        .frame(width: 103.0, height: 31.0)
                        .scaledToFit()
                        .padding(.leading, 20.0)
                        .font(Font.custom("SF Comact", size: 10))
                    
                }
                Image(systemName: "heart.circle")
                    .foregroundColor(Color(red: 0.377, green: 0.506, blue: 0.61))
                
            }
            
            
            
        }
        .padding(.bottom, 90)
    }
    
    
    struct WishList_Previews: PreviewProvider {
        static var previews: some View {
            WishList()
        }
    }
}
