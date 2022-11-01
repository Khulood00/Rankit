//
//  appleLog.swift
//  Rankit
//
//  Created by Wala Almuheef on 07/04/1444 AH.
//

import SwiftUI

struct appleLog: View {
    var body: some View {
        NavigationView{
            
            
                VStack(){
                        Image("coloredStar")
                            .resizable()
                            .frame(width: 130.0, height: 130.0)
                            .padding()
                        
                        Text("Rank your favorite events, and inspire others to explore the joy")
                            .font(.system(size: 16, weight: .bold))
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 50)
                    
                        
                        
                        ZStack(){
                            Button("Sign in with Apple") {}
                                .padding(.leading, 30.0)
                                .frame(maxWidth: .infinity, maxHeight: 57)
                                .foregroundColor(.white)
                                .background(Color.black)
                                .cornerRadius(8)
                            
                            Image(systemName:"apple.logo")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .padding(.trailing, 170)
                            
                        }.padding(.bottom, 17)
                        
                        ZStack(){
                            
                            Button("Sign up with email") {}
                                .padding(.leading, 25.0)
                                .frame(maxWidth: .infinity , maxHeight: 57)
                                .foregroundColor(.white)
                                .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                                .cornerRadius(8)
                            
                            Image(systemName:"envelope.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .padding(.trailing, 170)
                            
                        }.padding(.bottom, 70)
                        
                        
                    
                    HStack{
                        Text("Already Have an  Account?")
                        Button("Log in"){}
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
