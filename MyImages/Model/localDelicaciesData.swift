//
//  localDelicaciesData.swift
//  MyImages
//
//  Created by Dewashish Dubey on 07/02/24.
//

import Foundation

struct localDelicaciesData:Identifiable
{
    var id : UUID = .init()
    var foodImage: String
    var foodName : String
    var foodRestaurant : String
}

var localDelicaciesCard : [localDelicaciesData] = [
    localDelicaciesData(foodImage: "fishFry", foodName: "Fish Fry", foodRestaurant: "Gulshan Plaza"),
    localDelicaciesData(foodImage: "dalMakhni", foodName: "Butter Chicken", foodRestaurant: "Gulshan Plaza")
]
