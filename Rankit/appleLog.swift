//
//  appleLog.swift
//  Rankit
//
//  Created by Wala Almuheef on 07/04/1444 AH.
//

import SwiftUI

struct appleLog: View {
    @State var showAppleSheet: Bool = false
    @State var showEmailSheet: Bool = false
    
    var body: some View {
        NavigationView{
            
            VStack(){
                
                NavigationLink("Cancel", destination: HomePage())
                    .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                    .padding(.leading, 270)
                    .padding(.bottom,170)
                
                
                
                Image("coloredStar")
                    .resizable()
                    .frame(width: 130.0, height: 130.0)
                    .padding()
                
                Text("Rank your favorite events, and inspire others to explore the joy")
                    .font(.system(size: 16, weight: .bold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 50)
                
                
                
                ZStack(){
                    
                    Button(action: {showAppleSheet.toggle()}, label: {Text("Sign in with Apple")})
                        .padding(.leading, 30.0)
                        .frame(maxWidth: 280, maxHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                    
                    Image(systemName:"apple.logo")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                        .padding(.trailing, 150)
                    
                }.padding(.bottom, 17)
                    .sheet(isPresented: $showAppleSheet, content: {appleVerify()})
                
                ZStack(){
                    
                    Button(action: {showEmailSheet.toggle()}, label: {Text("Sign up with email")})
                        .padding(.leading, 25.0)
                        .frame(maxWidth: 280 , maxHeight: 50)
                        .foregroundColor(.white)
                        .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                        .cornerRadius(10)
                    
                    
                    Image(systemName:"envelope.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                        .padding(.trailing, 150)
                    
                }.padding(.bottom, 70)
                    .sheet(isPresented: $showEmailSheet, content: {CreateAcountPage()})
                
                
                
                HStack{
                    Text("Already Have an  Account?")
                    NavigationLink("Log in", destination: login())
                        .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                    
                }
                
                
            }.padding()
            
            
        }
    }
}


struct appleLog_Previews: PreviewProvider {
    static var previews: some View {
        appleLog()
    }
}
