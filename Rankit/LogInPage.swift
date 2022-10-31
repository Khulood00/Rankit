//
//  LogInPage.swift
//  Rankit
//
//  Created by Wala Almuheef on 05/04/1444 AH.
//

import SwiftUI
import AuthenticationServices


struct LogInPage: View {
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
                                .frame(maxWidth: .infinity, maxHeight: 57)
                                .foregroundColor(.white)
                                .background(Color.black)
                                .cornerRadius(8)
                            
                            Image(systemName:"envelope.circle.fill")
                                .foregroundColor(.red)
                            
                        }.padding(.bottom, 17)
                        
                        ZStack(){
                            
                            Button("Sign up with email") {}
                                .frame(maxWidth: .infinity , maxHeight: 57)
                                .foregroundColor(.white)
                                .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                                .cornerRadius(8)
                            
                            Image(systemName:"envelope.circle.fill")
                                .foregroundColor(.red)
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


struct LogInPage_Previews: PreviewProvider {
    static var previews: some View {
        LogInPage()
    }
}

