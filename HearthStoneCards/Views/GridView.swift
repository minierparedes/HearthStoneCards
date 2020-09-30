//
//  GridView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/30.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct GridView: View {
    @StateObject var hearthStoneCardstore = HearthStoneCardAPIService()
    let layout: [GridItem]
    var body: some View {
        LazyVGrid(columns: layout, spacing: 26){
            ForEach(hearthStoneCardstore.hearthStoneCards ?? [HearthStoneCard](), id: \.id ) { item in
                NavigationLink(destination: Text("Destination"), label: {
//                    GridCellView()
                    Text(item.name!)
                })
            }
        }
        onAppear{
            hearthStoneCardstore.getHearthStoneCards(complition: ([HearthStoneCard]) -> ())
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(layout: [GridItem(.adaptive(minimum: 180))])
    }
}
