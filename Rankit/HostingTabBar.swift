//
//  HostingTabBar.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 04/04/1444 AH.
//

import SwiftUI
import UIKit

struct HostingTabBar: View {
    
    private enum Tab: Hashable {
            case home
            case wish
            case profile
        }
    
    @State private var selectedTab: Tab = .home

    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomePage()
                .tag(0)
                .tabItem {
                    Text("Home")
                    Image(systemName: "house.fill")
                }
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(Color(red: 94/255, green: 126/255, blue: 152/255), for: .tabBar)
            
            WishList()
                .tag(1)
                .tabItem {
                    Text("Wish List")
                    Image(systemName: "heart.circle")
                }
                  .toolbar(.visible, for: .tabBar)
                  .toolbarBackground(Color(red: 94/255, green: 126/255, blue: 152/255), for:.tabBar)
            Profile()
                .tag(2)
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.crop.circle")
                }
            
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(Color(red: 94/255, green: 126/255, blue: 152/255), for:.tabBar)
            
        }
        .accentColor(.white)

    }
   
}

struct HostingTabBar_Previews: PreviewProvider {
    static var previews: some View {
        HostingTabBar()
        
    }
}
