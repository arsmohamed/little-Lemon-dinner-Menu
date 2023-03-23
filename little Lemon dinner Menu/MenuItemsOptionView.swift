//
//  MenuItemsOptionView.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-15.
//

import SwiftUI


struct MenuItemsOptionView: View {
    
    var body: some View {
        NavigationStack{
            List{
                Section("Selected categories") {
                    Text("MEr")
                    Text(MenuCategory.food.rawValue)
                    Text(MenuCategory.drink.rawValue)
                    Text(MenuCategory.dessert.rawValue)
//                    Toggle(MenuCategory.food.rawValue, isOn: $viewModel.isShowFood)
//                    Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.isShowDrinks)
//                    Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.isShowDesserts)
                }
                Section("Sort By") {
                    Text("MEr")
                    Text(MenuCategory.food.rawValue)
                    Text(MenuCategory.drink.rawValue)
                    Text(MenuCategory.dessert.rawValue)
//                    Toggle(MenuCategory.food.rawValue, isOn: $viewModel.isShowFood)
//                    Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.isShowDrinks)
//                    Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.isShowDesserts)
                }

                //will go with a picker as it will select one item out of many
//                Picker("Sort By", selection: <#Binding<_>#>) {
//                    ForEach(SortBy.allCases, id: \.self) { category in
//                        Text(category.rawValue).tag(category)
//                    }
                }
                .pickerStyle(.inline)
                .listStyle(.grouped)
            }
            .navigationTitle("filter")
        }
        
//        VStack (alignment: .leading){
//            Text("Filter")
//                .fontWeight(.bold)
//                .font(.system(size: 35))
//
//            Text("SELECTED CATEGORIES")
//                .padding([.top, .bottom],5)
//                .fontWeight(.thin)
//                .font(.system(size: 13))
//            Text( Categories.Food.rawValue).padding([.bottom],5)
//            Text( Categories.Drink.rawValue).padding([.bottom],5)
//            Text( Categories.Dessert.rawValue).padding([.bottom],5)
//
//            Text("SORT BY")
//                .padding([.top, .bottom],5)
//                .fontWeight(.thin)
//                .font(.system(size: 13))
//            Text( sorting.MostPopular.rawValue).padding([.bottom],5)
//            Text( sorting.price.rawValue).padding([.bottom],5)
//            Text( sorting.alpha.rawValue).padding([.bottom],5)
//        }
//        .padding()
//        .frame(
//            maxWidth: .infinity,
//            maxHeight: .infinity,
//            alignment: .topLeading
//        )
        
//    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
