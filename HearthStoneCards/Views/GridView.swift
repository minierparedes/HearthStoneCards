//
//  GridView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/30.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct GridView: View {
    let layout: [GridItem]
    var body: some View {
        LazyVGrid(colums: layout, spacing: 26){
            ForEach(0 ..< 8) { item in
                NavigationLink(destination: Text("Destination"), label: {
                    GridCellView()
                })
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(layout: [GridItem(.adaptive(minimum: 180))])
    }
}
