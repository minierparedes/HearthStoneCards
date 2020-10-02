//
//  CategoriesButtonView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/29.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct CategoriesButtonView: View {
    @Binding var filterByClass: String
    
    let categories: [String]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categories, id: \.self) { category in
                        Text(category)
                            .fontWeight(category == filterByClass ? .bold : .regular)
                            .padding(.horizontal, 6)
                            .foregroundColor(category == filterByClass ? Color(.label) : .secondary)
                            .fixedSize()
                            .onTapGesture {
                                filter(by: category)
                            }
                }
            }
        }
    }
    
    func filter(by label: String) {
        filterByClass = label
    }
    
}

struct CategoriesButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesButtonView(filterByClass: Binding.constant("Demon Hunter"), categories: ["Demon Hunter", "Druid", "Hunter", "Mage", "Paladin", "Priest", "Rogue", "Shaman", "Warlock", "Warrior"])
    }
}
