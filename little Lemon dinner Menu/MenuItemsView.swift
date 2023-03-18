//
//  ContentView.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-15.
//

import SwiftUI

struct Menu : Identifiable {
    
    var id: ObjectIdentifier
    let Title : String
    var Ingredients: Ingredient
}

struct MenuItemsView: View {
    var body: some View {
        NavigationView {
            Text("Menu")
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .topLeading)
                .fontWeight(.bold)
                .font(.system(size: 35))
                .toolbar {
                    NavigationLink( destination: MenuItemsOptionView()){
                        Image(systemName: "slider.horizontal.3")
                    }
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
