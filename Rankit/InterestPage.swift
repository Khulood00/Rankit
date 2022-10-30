//
//  InterestPage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 01/04/1444 AH.
//

import SwiftUI

struct InterestPage: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    HStack{
                        Spacer()
                            .padding(30)
                        NavigationLink {HomePage()}
                    label: {
                        Text("Skip")
                            .font(.title2)
                    }
                    }
                    .padding(30)
                    Text("Select Your Interest")
                        .multilineTextAlignment(.center)
                        .font(.title)
                    

                    
                    LazyHStack{
                        Button("Tech Camp") { }
                            .buttonStyle(.bordered)
                        Button("Events") { }
                            .buttonStyle(.bordered)
                        Button("Art") { }
                            .buttonStyle(.bordered)
                        Button("Sport") { }
                            .buttonStyle(.bordered)
                        Button("Beauty") { }
                            .buttonStyle(.bordered)
                        Button("Music") { }
                            .buttonStyle(.bordered)
                        Button("Game") { }
                            .buttonStyle(.bordered)
                        Button("Business") { }
                            .buttonStyle(.bordered)
                        Button("Cultural") { }
                            .buttonStyle(.bordered)
                        Button("Fashion") { }
                            .buttonStyle(.bordered)
                    }.frame(width: 200,height: 200)
                    Button("LET'S GO!") { }
                        .padding(.top, 40.0)
                        .buttonStyle(.bordered)
                }}
            
        }
    }
}
struct InterestPage_Previews: PreviewProvider {
    static var previews: some View {
        InterestPage()
    }
}
