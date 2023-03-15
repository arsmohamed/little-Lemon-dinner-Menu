//
//  MenuItemsOptionView.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-15.
//

import SwiftUI

struct MenuItemsOptionView: View {
    var body: some View {
        VStack {
            Text("Filter")
                .frame(
                    maxWidth: .infinity,
                    maxHeight: 50,
                    alignment: .topLeading)
                .fontWeight(.bold)
                .font(.system(size: 35))
            Text("selected categories")
                .frame(
                    maxWidth: .infinity,
                    maxHeight: 20,
                    alignment: .topLeading)
            Text("Sort By")
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .topLeading)
        }
        .padding()
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
