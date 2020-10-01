//
//  GridView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/30.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI


struct GridView: View {
    @StateObject var hearthStoneCardStore = HearthStoneCardAPIService()
    let layout: [GridItem]
    var body: some View {
        LazyVGrid(columns: layout, spacing: 26){
            ForEach(hearthStoneCardstore.hearthStoneCards ?? [HearthStoneCard](), id: \.id ) { hearthStoneCard in
                
                NavigationLink(destination: Text(hearthStoneCard.name), label: {
                    GridCellView(hsCardName: hearthStoneCard.name, hsImageID: hearthStoneCard.id)
                })
            }
        }
        onAppear{
            hearthStoneCardStore.getHearthStoneCards()
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(layout: [GridItem(.adaptive(minimum: 180))])
    }
}
