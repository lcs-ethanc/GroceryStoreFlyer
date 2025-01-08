//
//  FoodItemsListView.swift
//  GroceryStoreFlyer
//
//  Created by Pak Ching Ethan Chen on 2025-01-07.
//

import SwiftUI

struct FoodItemsListView: View {
    let departmentToShow: Department

    var body: some View {
            List(departmentToShow.items) {currentItem in
                let pricePerHundredGrams = currentItem.price / (currentItem.amountPerPackage/100)
                HStack (alignment: .top){
                    VStack (alignment: .leading){
                        Text(currentItem.name)
                            .bold()
                            .font(.system(size: 30))
                        HStack{
                            Text("$\(String(format: "%.2f", currentItem.price)) ")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(.blue)
                            Text("per \(String(format: "%.0f",currentItem.amountPerPackage))g")
                        }
                        Text("$\(String(format: "%.2f", pricePerHundredGrams)) per 100g")
                            .foregroundColor(.red)
                        
                            
                    } .padding(.trailing,5)
                        
                    Spacer()
                    
                Image(currentItem.image)
                    .resizable()
                    .frame(width:120, height:120)
                }
                    
            }
            .padding(.top,10)
                .navigationTitle(departmentToShow.name)
        
    }
}

#Preview {
    NavigationStack{
        FoodItemsListView(departmentToShow: thisWeeksFlyer.departments[0])
    }
}
