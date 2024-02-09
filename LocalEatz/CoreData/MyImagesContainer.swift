//
//  MyImagesContainer.swift
//  MyImages
//
//  Created by Dewashish Dubey on 05/02/24.
//

import Foundation
import CoreData

class MyImagesContainer
{
    let persistentContainer : NSPersistentContainer
    init()
    {
        persistentContainer = NSPersistentContainer(name: "MyImagesDataModel")
        persistentContainer.loadPersistentStores{ _, error in
            if let error {
                print(error.localizedDescription)
            }
        }
    }
}
