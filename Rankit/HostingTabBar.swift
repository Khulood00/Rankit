//
//  HostingTabBar.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 04/04/1444 AH.
//

import SwiftUI
import UIKit

struct HostingTabBar: View {
    
    
    init() {
      UITabBar.appearance().backgroundColor = UIColor(Color("Theme1"))
        
    }
    
    private enum Tab: Hashable {
            case home
            case wish
            case profile
        }
    
    @State private var selectedTab: Tab = .home
   
    
    
    var body: some View {
        NavigationView{
            TabView(selection: $selectedTab) {
           
                HomePage()
                    .tag(0)
                    .tabItem {
                        Text("Home")
                        Image(systemName: "house.fill")
                        
                    }
                
                WishList()
                    .tag(1)
                    .tabItem {
                        Text("Wish List")
                        Image(systemName: "heart.circle")
                    }
                
                
                Profile()
                    .tag(2)
                    .tabItem {
                        Text("Profile")
                        Image(systemName: "person.crop.circle")
                    }
                    
            }
           .tint(.white)
        }
    }
}

struct HostingTabBar_Previews: PreviewProvider {
    static var previews: some View {
        HostingTabBar()
        
    }
}
