//
//  Verification.swift
//  Rankit
//
//  Created by Wala Almuheef on 07/04/1444 AH.
//

import SwiftUI

struct Verification: View {
    @State var code = ""
    @State var showReviewSheet: Bool = false
    
    var body: some View {
        NavigationView(){
            
            
            ZStack{
                
                Rectangle()
                
                    .foregroundColor(Color(red: 237/255, green: 237/255, blue:237/255))
                    .frame(maxWidth: .infinity , maxHeight: .infinity)
                    .cornerRadius(27)
                    .padding(.top, 510)
                    .shadow(radius: 15)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 10){
                    
                    Text("please enter activation code we send to: ")
                        .foregroundColor(Color(red: 125/255, green: 125/255, blue: 125/255))
                    
                    Text("R……@gmail.com ")
                        .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                    
                    
                    
                    TextField("- - - -", text: $code)
                        .font(.system(size:60) .weight(.thin))
                        .padding(.leading, 126.0)
                    
                    
                    
                    
                    
                    Button(action: {showReviewSheet.toggle()}, label: {Text("Verify")})
                        .frame(maxWidth: 280 , maxHeight: 50)
                        .foregroundColor(.white)
                        .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                        .cornerRadius(8)
                }.padding(.top, 500)
                    .sheet(isPresented: $showReviewSheet, content: {ReviewsPage()})
                
                
                
                
                VStack {
                    Text("Verification")
                        .font(.system(size: 37, weight: .heavy))
                        .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                }.padding(.trailing,140)
                    .padding(.top, 50)
                
            }
            
            .navigationTitle("Verification")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
            
        }
        
    }
}

struct Verification_Previews: PreviewProvider {
    static var previews: some View {
        Verification()
    }
}
