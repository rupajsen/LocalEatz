//
//  ContentView.swift
//  MyImages
//
//  Created by Dewashish Dubey on 05/02/24.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    
    
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)])
    private var MyImages : FetchedResults<MyImage>
    @StateObject private var imagePicker = ImagePicker()
    
    @State private var formType: FormType?
    let columns = [GridItem(.adaptive(minimum: 100))]
    @State private var selectedTab = "One"
    var body: some View {
       // NavigationView{
            
        TabView(selection: $selectedTab){
                
            
            NavigationView {
                VStack
                {
                    HomeView(name: "")
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
                    //RestaurantRecommendation()
                    ShowData()
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
    /*var body: some View
    {
        NavigationStack
        {
            NavigationLink {
                AddData()
            } label: {
                Text("View All")
                    .foregroundColor(.orange)
                    .font(.system(size: 15))
                    //.padding(.leading,-70)
            }
        }
    }*/
}

#Preview {
    ContentView()
}
