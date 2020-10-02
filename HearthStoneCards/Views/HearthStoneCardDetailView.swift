//
//  HearthStoneCardDetailView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/10/02.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct HearthStoneCardDetailView: View {
    
    var hsImageID: String
    var body: some View {
        VStack {
            URLImageView(url: "https://art.hearthstonejson.com/v1/render/latest/enUS/256x/\(hsImageID).png", placeholder: "blackCard")
                .aspectRatio(contentMode: .fit)
                
        }
    }
}

struct HearthStoneCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HearthStoneCardDetailView(hsImageID: "")
    }
}
