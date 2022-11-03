//
//  appleVerify.swift
//  Rankit
//
//  Created by Wala Almuheef on 08/04/1444 AH.
//

import SwiftUI

struct appleVerify: View {
    @State var showReviewSheet: Bool = false
    
    var body: some View {
        NavigationView(){
            
            
            ZStack{
                
                Rectangle()
                
                    .foregroundColor(Color(red: 237/255, green: 237/255, blue:237/255))
                    .frame(maxWidth: .infinity , maxHeight: .infinity)
                    .cornerRadius(27)
                    .padding(.top, 400)
                    .shadow(radius: 15)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 25){
                    
                    HStack(){
                        Text("Apple ID")
                            .fontWeight(.heavy)
                        Spacer()
                        NavigationLink("Cancel", destination: appleLog())
                    }.padding(.leading, 30)
                        .padding(.trailing, 30)
                    
                    
                    Text("Do you want to sign with R….@gmail.com?")
                    Divider()
                        .padding()
                    
                    HStack(){
                        Text("Name")
                        Spacer()
                        Text("Rand")
                            .foregroundColor(Color.gray)
                        Spacer()
                        Image(systemName: "checkmark.circle.fill")
                    }.padding(.leading, 30)
                        .padding(.trailing, 30)
                    Divider()
                        .padding()
                    
                    
                    HStack(){
                        Text("Email")
                        Spacer()
                        Text("R...@gmail.com")
                            .foregroundColor(Color.gray)
                        Spacer()
                        Image(systemName: "checkmark.circle.fill")
                    }.padding(.leading, 30)
                        .padding(.trailing, 30)
                    
                    
                    
                    Button(action: {showReviewSheet.toggle()}, label: {Text("Continue")})
                        .frame(maxWidth: 280 , maxHeight: 50)
                        .foregroundColor(.white)
                        .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                        .cornerRadius(8)
                }
                .padding(.top, 390)
                .sheet(isPresented: $showReviewSheet, content:{ReviewsPage()})
                
                VStack(alignment: .center, spacing: 10){
                    Text("Rate learns what you like and leads you to Things you’ll like.")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color.black)
                }
                .padding(.bottom, 300)
                .padding()
            }
            
            .navigationTitle("Apple Verification")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
            
        }
        
    }
}

struct appleVerify_Previews: PreviewProvider {
    static var previews: some View {
        appleVerify()
    }
}

