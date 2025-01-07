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
        NavigationStack{
            List(departmentToShow.items) {currentItem in
                    Text(currentItem.name)
            }
                .navigationTitle(departmentToShow.name)
        }

    }
}

#Preview {
    FoodItemsListView(departmentToShow: thisWeeksFlyer.departments[0])
}
