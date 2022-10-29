//
//  Splash.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 01/04/1444 AH.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color(red: 94 / 255, green: 126 / 255, blue: 152 / 255),Color(red: 131 / 255, green: 180 / 255, blue: 165 / 255)],
    startPoint: .top, endPoint: .bottom)

struct Splash: View {
    @State var isActive:Bool = false

    @State private var size = 0.8
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            InterestPage()
        }
        else{
            ZStack{
                
                backgroundGradient
                    .edgesIgnoringSafeArea(.all)

                VStack{
                    
                    Image("Image")
                        
                    Text("Rank It")
                        .font(Font.custom("Impact", size: 36))
                        .foregroundColor(Color.white)
                    
  }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size=0.9
                        self.opacity=1.0
                    }
                }.onAppear{
                    DispatchQueue.main.asyncAfter(deadline:.now()+2.0 )
                    {
                        self.isActive=true
                    }
                }
            }
        }
        
       
      
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
