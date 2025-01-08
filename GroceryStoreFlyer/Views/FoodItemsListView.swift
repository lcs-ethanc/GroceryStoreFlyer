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
                HStack (alignment: .top){
                    VStack (alignment: .leading){
                        Text(currentItem.name)
                            .bold()
                        Text("$\(String(format: "%.2f", currentItem.price))")
                            .font(.system(size: 30))
                    }
                    .padding(.trailing,5)
                    
                Image(currentItem.image)
                    .resizable()
                    .frame(width:200, height:200)
                }
                    
            }
                .navigationTitle(departmentToShow.name)

    }
}

#Preview {
    NavigationStack{
        FoodItemsListView(departmentToShow: thisWeeksFlyer.departments[0])
    }
}
