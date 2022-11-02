//
//  ReviewItem.swift
//  Rankit
//
//  Created by Khulood Alhamed on 01/11/2022.
//

import SwiftUI

struct ReviewItem: View {
    
 //   let name : String
    //let stars : Image
    //let text : String
    //let clock : Image
    //let day : String
   
    var body: some View {
     
        // First user review
        HStack {
            VStack {
                Text("Malak")
                Image("newstars")
                                                       .resizable()
                                                       .frame(width: 103.0, height: 25.0)
                                                       .clipShape(Rectangle())
                                                       .scaledToFit()

                Text("Highly Recommended")
            }
            Spacer()
            Image(systemName: "clock")
            Text("Today")
            
            
            
        }.padding()
        
        // Second user Review
        
        
        
    }
}

struct ReviewItem_Previews: PreviewProvider {
    static var previews: some View {
       
        ReviewItem()
    }
}
