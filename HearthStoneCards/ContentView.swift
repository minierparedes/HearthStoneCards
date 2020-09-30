//
//  ContentView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/26.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //@ObservedObject private var cardViewModel = CardsViewModel()
    
    var body: some View {
        
        TabView {
            CategoriesView()
                .tabItem{
                    Image(systemName: "house")
            }.tag(1)
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
