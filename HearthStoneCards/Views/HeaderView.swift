//
//  HeaderView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/29.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    let label: String
    var body: some View {
        Text(label)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding([.leading, .bottom])
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(label: "Categories")
    }
}
