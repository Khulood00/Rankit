//
//  ReviewItem.swift
//  Rankit
//
//  Created by Khulood Alhamed on 01/11/2022.
//

import SwiftUI

struct Reviews {
    var id = UUID()
    var name : String
    var ratting: Int
    var comment: String
    var time: Date
}
struct ReviewItem: View {
    
    @State var review : Reviews
    
    var body: some View {
     
        // First user review
        HStack {
            VStack {
                Text(review.name)
                Image("\(review.ratting)")
                .resizable()
                .frame(width: 103.0, height: 25.0)
                .clipShape(Rectangle())
                .scaledToFit()

                Text(review.comment)
            }
            Spacer()
            Image(systemName: "clock")
            Text(review.time, format: .dateTime)
            
            
            
        }.padding()
        
        // Second user Review
        
        
        
    }
}

struct ReviewItem_Previews: PreviewProvider {
    static var previews: some View {
        ReviewItem(review: .init(name: "cl", ratting: 5, comment: "dlodf", time: .now))
    }
}
