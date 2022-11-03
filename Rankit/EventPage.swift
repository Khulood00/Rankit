//
//  EventPage.swift
//  Rankit
//
//  Created by Khulood Alhamed on 30/10/2022.
//

import SwiftUI

struct EventPage: View {
    @State var isPresent = false
    @State var isValid = false
    @State var isTrue = false
    var body: some View {
       
        NavigationView{
            
            ZStack{
                ScrollView (.vertical){
                    Image("AppleAcademy")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    Text("Camps")
                        .foregroundColor(Color(red: 0.334, green: 0.462, blue: 0.567))
                        .frame(width: 70.0, height: 27.0)
                        .background(RoundedRectangle(cornerRadius: 25).fill(Color(red: 0.918, green: 0.918, blue: 0.918)))
                        .padding(.top,8.0)
                        .padding(.trailing, 295.0)
                    
                    
                    // The details of camps
                    Group{
                        Text("Apple Developer Academy")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, 150.0)
                            .padding(.top, 15)
                        
                        
                        HStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 40.0, height: 40.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.918, green: 0.918, blue: 0.918)/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(8)
                                
                                Image(systemName: "clock") .imageScale(.large)
                                    .foregroundColor(Color(red: 0.334, green: 0.462, blue: 0.571))
                            }
                            
                            VStack{
                                Text("Sun - Thu")
                                Text("9 am - 1 pm")
                                
                                
                            }.padding(.leading, 5)
                            
                            
                            
                            VStack{
                                Image("5")
                                    .resizable()
                                    .frame(width: 110, height: 30)
                                    .clipShape(Rectangle())
                                    .scaledToFit()
                            }.padding(.leading, 105)
                        
                        }
                        
                        
                        Text("About")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, 303.0)
                            .padding(.top, 13.0)
                        Text("Preparing aspiring entrepreneurs, developers, and designers, with the skills, resources, and training to find and create jobs in the thriving iOS app economy.")
                            .font(.body)
                            .foregroundColor(Color(red: 0.32, green: 0.305, blue: 0.314))
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15.0)
                        
                        Image("map" )
                            .resizable()
                            .scaledToFit()
                            .padding()
                            
                         
                    }
                    
                    // The buttons
                    Group{
                        HStack{
                         
                                
                                Button {
                                    print("test")
                                    isPresent = true
                                } label: {
                                    VStack{
                                        Image(systemName: "plus.bubble")
                                        Text("Reviews")
                                    }

                                    NavigationLink(destination:appleLog().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                                } .frame(width: 110, height: 67)
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.367, green: 0.49, blue: 0.598))
                                    .cornerRadius(8)
                     
                            Button {
                                print("test")
                                isValid = true
                            } label: {
                                VStack{
                                    Image(systemName: "heart.fill")
                                    Text("Wish List")
                                }
                                NavigationLink(destination:WishList(), isActive: $isValid){}
                            }.frame(width: 110, height: 67)
                                .foregroundColor(.white)
                                .background(Color(red: 0.367, green: 0.49, blue: 0.598))
                                .cornerRadius(8)
                    
                            Button(action: actionSheet) {
                                VStack{
                                    Image(systemName: "square.and.arrow.up")
                                    
                                    Text("Share")
                                }
                            } .frame(width: 110, height: 67)
                                .foregroundColor(.white)
                                .background(Color(red: 0.367, green: 0.49, blue: 0.598))
                                .cornerRadius(8)
                        }
                    }
                    
                    
                    // Rating and Reviews details
                    
                    Group{
                        
                        Text("Rating & Reviews")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, 200.0)
                            .padding(.top, 13.0)
                            .padding(/*@START_MENU_TOKEN@*/.top, 13.0/*@END_MENU_TOKEN@*/)
                        ZStack{
                            Rectangle()
                                .frame(width: 353.0, height: 87.0)
                                .foregroundColor(Color(red: 0.918, green: 0.918, blue: 0.918))
                                .cornerRadius(8)
                            HStack{
                                Text("4.5")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .padding(.leading, -120)
                                
                                Text("out of 5")
                                    .padding(.leading, -80.0)
                                
                                
                                
                                
                                VStack{
                                    Image("5")
                                        .resizable()
                                        .frame(width: 110, height: 30)
                                    //.scaledToFit()
                                    
                                    Text("70 Users Rating")
                                        .font(Font.custom("SF Comact", size: 12))
                                    
                                    
                                }.padding(.trailing, -120.0)
                            }
                           
                            
                        }
                    }
                    
                    
                    
                    
                    
                    Group{
                        
                        ReviewItem(review: .init(name: "Malak", ratting: 5, comment: "Highly Recommended", time: .now))
                        Rectangle()
                            .frame(width: 350.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.885, green: 0.89, blue: 0.886)/*@END_MENU_TOKEN@*/)
                            .frame(height: 1.0, alignment: .bottom)
                        
                        ReviewItem(review: .init(name: "Sara", ratting: 5, comment: "I enjoyed", time: .now))
                        
                        Rectangle()
                            .frame(width: 350.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.885, green: 0.89, blue: 0.886)/*@END_MENU_TOKEN@*/)
                            .frame(height: 1.0, alignment: .bottom)
                        ReviewItem(review: .init(name: "Dana", ratting: 5, comment: "Good environment to learn", time: .now))
                        
                        
                    }
                    
         
                    
                }
            }
        }
    }
    
    func actionSheet() {
           guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
           let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
           UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
       }
}


    
    struct EventPage_Previews: PreviewProvider {
        static var previews: some View {
            EventPage()
        }
    }

