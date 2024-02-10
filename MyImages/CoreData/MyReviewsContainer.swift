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
    @Published var savedEntities: [MyReviews] = []
    init()
    {
        container = NSPersistentContainer(name: "MyReviews")
        container.loadPersistentStores{ _, error in
            if let error {
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchReviews(){
        let reviewRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "MyReviews")
        do{
            savedEntities = try container.viewContext.fetch(reviewRequest)
        } catch let error{
            print("Error fetching. \(error)")
        }
    }
    
}
