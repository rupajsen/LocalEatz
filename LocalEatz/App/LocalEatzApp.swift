//
//  MapViewApp.swift
//  MapView
//
//  Created by Rupaj Sen on 16/12/23.
//

import SwiftUI
import Firebase

@main
struct LocalEatzApp: App {
    @StateObject var viewModel = AuthViewModel()
    @StateObject var LocationManager = locationManager()
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)])
    private var MyImages : FetchedResults<MyImage>
    @StateObject private var imagePicker = ImagePicker()
    
    @State private var formType: FormType?
    let columns = [GridItem(.adaptive(minimum: 100))]
    @Environment(\.managedObjectContext) var managedObjectContext
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            FirstScreen()
                //.environment(\.managedObjectContext, MyImagesContainer().persistentContainer.viewContext)
                .environmentObject(viewModel)
                .environmentObject(LocationManager)
        }
    }
}
