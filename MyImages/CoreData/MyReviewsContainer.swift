//
//  MyReviewsContainer.swift
//  MyImages
//
//  Created by Rupaj Sen on 10/02/24.
//

import Foundation
import CoreData

class MyReviewsContainer
{
    let container : NSPersistentContainer
    init()
    {
        container = NSPersistentContainer(name: "MyReviewsDataModel")
        container.loadPersistentStores{ _, error in
            if let error {
                print(error.localizedDescription)
            }
        }
    }
}
