//
//  CategoriesView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/30.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct CategoriesView: View {
    @State private var text = ""
    let categories = ["Demon Hunter", "Druid", "Hunter", "Mage", "Paladin", "Priest", "Rogue", "Shaman", "Warlock", "Warrior"]
    let layout = [GridItem(.adaptive(minimum: 180))]
    var body: some View {
        NavigationView {
            ScrollView {
                SearchTextFieldView(text: $text)
                HeaderView(label: "Categories")
                CategoriesButtonView(categories: categories)
                GridView(layout: layout)
                
            }
            .navigationBarItems(leading: NavigationBarItemView(image: "line.horizontal.3"), trailing: NavigationBarItemView(image: "person.crop.circle"))
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
