//
//  ContentView.swift
//  MapView
//
//  Created by Rupaj Sen on 16/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            TabView{
                
                HomeView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                //hello
                MapView()
                    .tabItem {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Foodie Map")
                    }
                
                ItineraryView()
                    .tabItem {
                        Image(systemName: "map")
                        Text("Itinerary")
                    }
                
                login_page()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                
            }
        }
    }
}



#Preview {
    ContentView()
}
