//
//  CategoriesButtonView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/29.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct CategoriesButtonView: View {
    let categories: [String]
    var body: some View {
        HStack {
            ForEach(categories, id: \.self) { category in
                Button(action: {}, label: {
                    Text(category)
                        .fontWeight(category == self.categories.first ? .bold : .regular)
                        .padding(.horizontal, 6)
                        .foregroundColor(category == self.categories.first ? Color(.label) : .secondary)
                })
                
            }
        }
    }
}

struct CategoriesButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesButtonView(categories: ["Demon Hunter", "Druid", "Hunter", "Mage", "Paladin", "Priest", "Rogue", "Shaman", "Warlock", "Warrior"])
    }
}
