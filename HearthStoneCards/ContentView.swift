//
//  ContentView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/26.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var hearthStoneCardstore = HearthStoneCardAPIService()
    
    var body: some View {
        
        URLImageView(url: "https://art.hearthstonejson.com/v1/render/latest/enUS/512x/EX1_011.png")
        
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
        ContentView(hearthStoneCardstore: HearthStoneCardAPIService())
    }
}
