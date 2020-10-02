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
    @State private var isSidemenuShowing = false
    @State private var isAccountViewShowing = false
    let categories = ["Demon Hunter", "Druid", "Hunter", "Mage", "Paladin", "Priest", "Rogue", "Shaman", "Warlock", "Warrior"]
    let layout: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    SearchTextFieldView(text: $text)
                    HeaderView(label: "Categories")
                    CategoriesButtonView(categories: categories)
                        .padding()
                    GridView(hearthStoneCardStore: HearthStoneCardAPIService())
                    
                }
                
                .navigationBarItems(leading: NavigationBarItemView(image: "line.horizontal.3", isSidemenuShowing: $isSidemenuShowing, isAccountViewShowing: $isAccountViewShowing), trailing: NavigationBarItemView(image: "person.crop.circle", isSidemenuShowing: $isSidemenuShowing, isAccountViewShowing: $isAccountViewShowing))
                .sheet(isPresented: $isAccountViewShowing) {
                    AccountView(isAccountViewShowing: $isAccountViewShowing)
                }
            }
            if isSidemenuShowing {
                HStack {
                    SideMenuVIew(isSidemenuShowing: $isSidemenuShowing)
                        .offset(x: isSidemenuShowing ? 0 : -200)
                    Spacer()
                }
            }else {
                EmptyView()
            }
            
            
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
