//
//  ContentView.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-15.
//

import SwiftUI

struct MenuItemsView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
