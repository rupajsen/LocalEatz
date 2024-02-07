//
//  MyImagesApp.swift
//  MyImages
//
//  Created by Dewashish Dubey on 05/02/24.
//

import SwiftUI

@main
struct MyImagesApp: App {
    //@StateObject var LocationManager = locationManager()
    var body: some Scene {
        WindowGroup {
           // ContentView()
            FirstScreen()
                .environment(\.managedObjectContext, MyImagesContainer().persistentContainer.viewContext)
                
                
        }
    }
}
