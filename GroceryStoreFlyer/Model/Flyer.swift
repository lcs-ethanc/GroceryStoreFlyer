//
//  Flyer.swift
//  GroceryStoreFlyer
//
//  Created by Pak Ching Ethan Chen on 2025-01-07.
//

import Foundation

struct Flyer {
    let departments: [Department]
}
 
struct Department: Identifiable {
    let id = UUID()
    let name: String
    let items: [FoodItem]
}
 
struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Double
    let amountPerPackage: Double
}


let thisWeeksFlyer = Flyer(
    
    departments: [
        
        Department(
            name: "Butcher's Best",
            items: [
                FoodItem(
                    name: "Sirloin Tip Oven Roasts",
                    image: "sirloin-tips",
                    price: 15.37,
                    amountPerPackage: 1000
                ),
                FoodItem(
                    name: "Porkloin Back Ribs",
                    image: "porkloin-back-ribs",
                    price: 8.75,
                    amountPerPackage: 1000
                ),
            ]
        ),
 
        Department(
            name: "Seafood",
            items: [
                FoodItem(
                    name: "Wild Pacific Halibut Fillets",
                    image: "wild-pacific-halibut-fillets",
                    price: 4.97,
                    amountPerPackage: 100
                ),
                FoodItem(
                    name: "Wild Sockeye Salmon Fillets",
                    image: "wild-sockeye-salmon-fillets",
                    price: 3.47,
                    amountPerPackage: 100
                ),
                FoodItem(
                    name: "Clam Chowder",
                    image: "clam-chowder",
                    price: 11.97,
                    amountPerPackage: 550
                ),
            ]
        ),
        
        Department(
            name: "Deli",
            items: [
                FoodItem(
                    name: "Garlic Sausage Link",
                    image: "garlic-sausage-link",
                    price: 5.97,
                    amountPerPackage: 400
                ),
                FoodItem(
                    name: "Original Turkey Bites",
                    image: "original-turkey-bites",
                    price: 11.97,
                    amountPerPackage: 300
                ),
                FoodItem(
                    name: "Turkey Pizza Pepperoni",
                    image: "turkey-pizza-pepperoni",
                    price: 7.47,
                    amountPerPackage: 250
                ),
            ]
        ),
        
        
    ]
)
