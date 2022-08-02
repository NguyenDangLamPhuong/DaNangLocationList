//
//  ModelData.swift
//  DaNangLocationList
//
//  Created by Mac on 02/08/2022.
//

import Foundation
import CoreLocation

var locations = decodeJsonLocationFromJsonFile(jsonFileName: "locations.json")

// How to decode a json file into a struct
func decodeJsonLocationFromJsonFile(jsonFileName: String) -> [Location] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Location].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Location]
}
var categories = decodeJsonCategoryFromJsonFile(jsonFileName: "categories.json")
//
//// How to decode a json file into a struct
func decodeJsonCategoryFromJsonFile(jsonFileName: String) -> [Category] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Category].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Category]
}

var foodLocations = decodeJsonFoodLocationFromJsonFile(jsonFileName: "foodLocation.json")

// How to decode a json file into a struct
func decodeJsonFoodLocationFromJsonFile(jsonFileName: String) -> [Location] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Location].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Location]
}
var drinkLocations = decodeJsonDrinkLocationFromJsonFile(jsonFileName: "drinkLocation.json")

// How to decode a json file into a struct
func decodeJsonDrinkLocationFromJsonFile(jsonFileName: String) -> [Location] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Location].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Location]
}
