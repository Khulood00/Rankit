//
//  RatingView.swift
//  Rankit
//
//  Created by Wedad Almehmadi on 02/11/2022.
//

import SwiftUI


struct RatingView: View {
    @Binding var rating: Int?
       var max: Int = 5
    
    private func starType(index: Int) -> String {
           
           if let rating = self.rating {
               return index <= rating ? "star.fill" : "star"
           } else {
               return "star"
           }
           
       }
    
    
    var body: some View {
        HStack {
                   ForEach(1..<(max + 1), id: \.self) { index in
                       Image(systemName: self.starType(index: index))
                           .resizable()
                               .frame(width: 32.0, height: 32.0)
                           .foregroundColor(Color.orange)
                           .onTapGesture {
                               self.rating = index

                       }
                           .padding(6)
                   }
               }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(5))
    }
}
