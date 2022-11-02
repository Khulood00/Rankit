//
//  login.swift
//  Rankit
//
//  Created by Wala Almuheef on 07/04/1444 AH.
//

import SwiftUI

struct login: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var showHide: String = ""
    @State var showReviewSheet = false
    
    var body: some View {
        NavigationView(){
            
            
            
            ZStack{
                
                Rectangle()
                
                    .foregroundColor(Color(red: 237/255, green: 237/255, blue:237/255))
                    .frame(maxWidth: .infinity , maxHeight: .infinity)
                    .cornerRadius(27)
                    .padding(.top, 500)
                    .shadow(radius: 15)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 30){
                    
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    Button(action: {showReviewSheet.toggle()}, label: {Text("Log In")})
                        .frame(maxWidth: 280 , maxHeight: 50)
                        .foregroundColor(.white)
                        .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                        .cornerRadius(8)
                }.padding(.top, 450)
                    .sheet(isPresented: $showReviewSheet, content: {ReviewsPage()})
                
                VStack {
                    Text("Log In")
                        .font(.system(size: 37, weight: .heavy))
                        .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                    
                    Text("Wealcome Back")
                        .font(.system(size: 16))
                    
                    
                }.padding(.trailing,200)
                    .padding(.bottom, 30)
                
            }
            
            .navigationTitle("Log In")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
            
        }
        
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
