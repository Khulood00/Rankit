//
//  Profile.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 04/04/1444 AH.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        
      

        VStack{
            VStack{
                
                
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .foregroundColor(Color(red: 0.377, green: 0.506, blue: 0.606))
                    .clipShape(Circle())
                Text("Add photo")
                    
            }
        }
        
        
        
        
        
        
              }
}




struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
