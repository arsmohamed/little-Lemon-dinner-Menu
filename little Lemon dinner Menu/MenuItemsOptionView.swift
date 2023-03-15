//
//  MenuItemsOptionView.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-15.
//

import SwiftUI
enum CategoriesOption {
    case Food
    case Drink
    case Desert
}
enum SortingOptions {
    case Popular
    case Prices
    case Alphabetically
}
struct MenuItemsOptionView: View {
    var body: some View {
        VStack{
            Text("Filter")
                .fontWeight(.bold)
                .font(.title)
                .offset(x:-150, y:-300)
                .padding(20)
            Text("selected categories")
                .fontWeight(.light)
                .offset(x:-100, y:-300)
            Text("sort By")
                .fontWeight(.light)
                .offset(x:-144, y:-300)
        }
        .frame(width: 160, height: 160)
            
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
