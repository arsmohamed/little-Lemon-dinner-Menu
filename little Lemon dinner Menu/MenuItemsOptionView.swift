//
//  MenuItemsOptionView.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-15.
//

import SwiftUI


struct MenuItemsOptionView: View {
    //importing module
    @EnvironmentObject var viewModel: MenuViewDataModel

    var body: some View {
        NavigationStack{
            List{
                Section("Selected categories") {
                    Toggle(MenuCategory.food.rawValue, isOn: $viewModel.isShowFood)
                    Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.isShowDrinks)
                    Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.isShowDesserts)
                }
                //will go with a picker as it will select one item out of many
                Picker("Sort By", selection: $viewModel.sortBy) {
                    ForEach(SortBy.allCases, id: \.self) { category in
                        Text(category.rawValue).tag(category)
                    }
                }
                .pickerStyle(.inline)
                .listStyle(.grouped)
            }
            .navigationTitle("filter")
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView().environmentObject(MenuViewDataModel())
    }
}
