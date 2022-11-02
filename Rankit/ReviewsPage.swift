//
//  ReviewsPage.swift
//  Rankit
//
//  Created by Khulood Alhamed on 01/11/2022.
//

import SwiftUI

struct ReviewsPage: View {
    var body: some View {
        ZStack{
            VStack{
                Image("Group")
                    .resizable()
                           .aspectRatio(1.0, contentMode: .fit)
                    .cornerRadius(5)
                    .shadow(color: .gray, radius: 10, x: 0, y: 0)
            }
                .padding(.bottom, 590)
        }
    }
}

struct ReviewsPage_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsPage()
    }
}
