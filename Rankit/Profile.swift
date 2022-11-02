//
//  Profile.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 04/04/1444 AH.
//

import SwiftUI

struct Profile: View {
    
    @State var fullname = ""
    @State var interest = ""
    
    var body: some View {
        
        
      

        VStack{
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.377, green: 0.506, blue: 0.606))
                .padding(.trailing, 200.0)
                .padding(/*@START_MENU_TOKEN@*/.bottom, 100.0/*@END_MENU_TOKEN@*/)
                
            VStack{
               
                
                Image(systemName: "person.fill")
                
                    .scaledToFit()
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .background(Color(red: 0.377, green: 0.506, blue: 0.606))
                    .cornerRadius(/*@START_MENU_TOKEN@*/29.0/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    
                Text("Add photo")
                
                TextField("Full Name", text: $fullname)
                    .padding()
                    .frame(width: 320, height: 61)
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 8)
                
                TextField("Interest", text: $interest)
                    .padding()
                    .frame(width: 320, height: 61)
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 8)
                
                    
            }
           
        } .padding(.bottom, 250.0)
        
        
        
        
        
        
              }
}




struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
