//
//  ContentView.swift
//  MapView
//
//  Created by Rupaj Sen on 16/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "One"
    var body: some View {
       // NavigationView{
            
        TabView(selection: $selectedTab){
                
            
            NavigationView {
                VStack
                {
                    HomeView()
                }
                
            }
            .padding(.top,-30)
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag("One")
            
            NavigationView {
                VStack
                {
                    RestaurantRecommendation()
                }
                
            }
            .tabItem {
                Label("Near Me", systemImage: "fork.knife")
            }
            .tag("two")
            
            NavigationView {
                VStack
                {
                    PlannedTrips()
                }
                
            }
            .tabItem {
                Label("Itinerary", systemImage: "map")
            }
            .tag("three")
            
            NavigationView {
                VStack
                {
                    MapView()
                }
                
            }
            .tabItem {
                Label("Foodie Map", systemImage: "mappin.and.ellipse")
            }
            .tag("four")
            
            NavigationView {
                VStack
                {
                    ProfileView()
                }
                
            }
            .tabItem {
                Label("Profile", systemImage: "person.crop.circle")
            }
            .tag("five")
            
                /*HomeView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                RestaurantRecommendation()
                    .tabItem {
                        Image(systemName: "fork.knife")
                        Text("Near Me")
                    }
                
                PlannedTrips()
                    .tabItem {
                        Image(systemName: "map")
                        Text("Itinerary")
                    }
                
                MapView()
                    .tabItem {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Foodie Map")
                    }*/
            }
       // }
    }
}



#Preview {
    ContentView()
}
