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
    @State var isPresent = false
    
    var body: some View {
        
        
      

        VStack{
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.377, green: 0.506, blue: 0.606))
                .padding(.trailing, 200.0)
                .padding(.bottom, 60)
                
            VStack{
        
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()

                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .background(Color(red: 0.377, green: 0.506, blue: 0.606))
                    .cornerRadius(/*@START_MENU_TOKEN@*/29.0/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    
                Text("Add photo")
                ZStack{
                    
                    VStack(alignment: .center, spacing: 30){
                        ZStack{
                            TextField("Full Name", text: $fullname)
                                .padding()
                                .frame(width: 320, height: 61)
                                .background(Color.white)
                                .cornerRadius(8)
                                .shadow(radius: 8)
                            Image(systemName: "pencil")
                                .padding(.leading, 250.0)
                        }
                        
                        ZStack{
                           
                            TextField("Interest", text: $interest)
                                .padding()
                                .frame(width: 320, height: 61)
                                .background(Color.white)
                                .cornerRadius(8)
                                .shadow(radius: 8)
                            Image(systemName: "pencil")
                                .padding(.leading, 250.0)
                        }
                        
                        Button {
                            print("test")
                            isPresent = true
                        } label: {
                            VStack{
                               
                                Text("Sign Out")
                            }

                            NavigationLink(destination:appleLog(), isActive: $isPresent){}
                        }
                        .frame(width: 320, height: 61)
                            .foregroundColor(.white)
                            .background(Color(red: 0.367, green: 0.49, blue: 0.598))
                            .cornerRadius(8)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                    } .padding(.bottom, 160)
                        
                    }
                    .padding(.top)
                }
            }
            
           
        
        
        
        
        
        
              }
}




struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
