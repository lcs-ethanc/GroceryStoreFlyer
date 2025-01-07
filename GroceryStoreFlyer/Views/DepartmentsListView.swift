//
//  DepartmentListView.swift
//  GroceryStoreFlyer
//
//  Created by Pak Ching Ethan Chen on 2025-01-07.
//

import SwiftUI

struct DepartmentsListView: View {
    var body: some View {
        
        NavigationStack{
            
            List(thisWeeksFlyer.departments) { currentDepartment in
                
                NavigationLink {
                    FoodItemsListView(departmentToShow: currentDepartment)
                } label: {
                    Text(currentDepartment.name)
                }

                }
            .navigationTitle("Weekly Flyer")
            }
            
        }
    }


#Preview {
    DepartmentsListView()
}
