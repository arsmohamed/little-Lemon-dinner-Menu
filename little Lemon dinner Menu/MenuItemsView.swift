//
//  ContentView.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-15.
//

import SwiftUI

struct MenuItemsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, MenuItemsView!")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        NavigationLink(destination: MenuItemsOptionView()) {
                            Image(systemName: "slider.horizontal.3")
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
