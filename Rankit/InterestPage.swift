//
//  InterestPage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 01/04/1444 AH.
//

import SwiftUI

struct InterestPage: View {
    var body: some View {
        ZStack{
            VStack{
                
                NavigationView{
                    NavigationLink(destination: HomePage())
                    {
                        Text("Skip")
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .navigationBarTitleDisplayMode(.inline)
                            .padding(.leading, 300.0)
                    }
                    
                }
                Text("Select Your Interest")
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 600.0)
                    .font(.title)
            }
            VStack{
                HStack{
                    Button("Tech Camp") { }
                        .buttonStyle(.bordered)
                    Button("Events") { }
                        .buttonStyle(.bordered)
                }
                HStack{
                    Button("Art") { }
                        .buttonStyle(.bordered)
                    Button("Sport") { }
                        .buttonStyle(.bordered)
                    Button("Beauty") { }
                        .buttonStyle(.bordered)
                }
                HStack{
                    Button("Music") { }
                        .buttonStyle(.bordered)
                    Button("Game") { }
                        .buttonStyle(.bordered)
                    Button("Business") { }
                        .buttonStyle(.bordered)
                }
                HStack{
                    Button("Cultural") { }
                        .buttonStyle(.bordered)
                    Button("Fashion") { }
                        .buttonStyle(.bordered)
                }
                Button("LET'S GO!") { }
                    .padding(.top, 40.0)
                    .buttonStyle(.bordered)
            }
            
        }
    }
}

struct InterestPage_Previews: PreviewProvider {
    static var previews: some View {
        InterestPage()
    }
}
