//
//  MenuItemsOptionView.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-15.
//

import SwiftUI

enum Categories: String,CaseIterable {
    case Food = "Food"
    case Drink = "Drink"
    case Dessert = "Dessert"
}
enum sorting: String, CaseIterable {
    case MostPopular = "Most Popular"
    case price = "Price $-$$$"
    case alpha = "A-Z"
}
struct MenuItemsOptionView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Filter")
                .fontWeight(.bold)
                .font(.system(size: 35))
            
            Text("SELECTED CATEGORIES")
                .padding([.top, .bottom],5)
                .fontWeight(.thin)
                .font(.system(size: 13))
            Text( Categories.Food.rawValue).padding([.bottom],5)
            Text( Categories.Drink.rawValue).padding([.bottom],5)
            Text( Categories.Dessert.rawValue).padding([.bottom],5)
            
            Text("SORT BY")
                .padding([.top, .bottom],5)
                .fontWeight(.thin)
                .font(.system(size: 13))
            Text( sorting.MostPopular.rawValue).padding([.bottom],5)
            Text( sorting.price.rawValue).padding([.bottom],5)
            Text( sorting.alpha.rawValue).padding([.bottom],5)
        }
        .padding()
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        
    }
}

//
//struct MenuItemsOptionView: View {
//    
//    var body: some View {
//        VStack(alignment: .leading, spacing: 20) {
//            Section(header: Text("SELECTED CATEGORIES")) {
//                ForEach(MenuCategory.allCases, id: \.self) { category in
//                    Text(category.rawValue)
//                }
//            }
//            Spacer()
//            Section(header: Text("SORT BY")) {
//                ForEach(MenuItemSortOption.allCases, id: \.self) { sortOption in
//                    Text(sortOption.rawValue)
//                }
//            }
//        }
//        .padding()
//        .navigationBarTitle(Text("Menu Options"))
//    }
//}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
