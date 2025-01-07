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
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle(departmentToShow.name)
        }

    }
}

#Preview {
    FoodItemsListView(departmentToShow: thisWeeksFlyer.departments.first!)
}
