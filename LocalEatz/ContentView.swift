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
                

                    .tabItem {
                        Image(systemName: "fork.knife")
                        Text("Near Me")
                    }
                
                ItineraryView()
                    .tabItem {
                        Image(systemName: "map")
                        Text("Itinerary")
                    }
                
                MapView()
                    .tabItem {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Foodie Map")
                    }
            }
        }
    }
}



#Preview {
    ContentView()
}
