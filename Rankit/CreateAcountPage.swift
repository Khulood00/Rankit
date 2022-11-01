//
//  CreateAcountPage.swift
//  Rankit
//
//  Created by Wala Almuheef on 07/04/1444 AH.
//

import SwiftUI

struct CreateAcountPage: View {
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirm = ""
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView(){
            
            
            
            ZStack{
                
                Rectangle()
                
                    .foregroundColor(Color(red: 237/255, green: 237/255, blue:237/255))
                    .frame(maxWidth: .infinity , maxHeight: .infinity)
                    .cornerRadius(27)
                    .padding(.top, 380)
                    .shadow(radius: 15)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 30){
                    
                    TextField("Full Name", text: $username)
                        .padding()
                        .frame(width: 339, height: 53)
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 339, height: 53)
                        .background(Color.white)
                        .cornerRadius(8)
                        
                    
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 339, height: 53)
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    TextField("Confirm Password", text: $confirm)
                        .padding()
                        .frame(width: 339, height: 53)
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    Button("Sign up ") {}
                        .frame(maxWidth: 339 , maxHeight: 57)
                        .foregroundColor(.white)
                        .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                        .cornerRadius(8)
                }.padding(.top, 350)
               
                VStack {
                    Text("Create Account")
                        .font(.system(size: 37, weight: .bold))
                        .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                }.padding(.trailing,80)
                    .padding(.bottom, 250)
            }
            
            .navigationTitle("Create Account")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
            
        }
        
    }
}

struct CreateAcountPage_Previews: PreviewProvider {
    static var previews: some View {
        CreateAcountPage()
    }
}
