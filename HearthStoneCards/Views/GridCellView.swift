//
//  GridCellView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/30.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct GridCellView: View {
    let hsCardName: String
    let hsCardClass: String
    let hsCardSet: String
    let hsImageID: String
    var body: some View {
        VStack {
            HStack {
                Text(hsCardName)
                    .font(.body)
                    .bold()
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "heart")
                })
            }
            .padding([.top, .horizontal])
            URLImageView(url: "https://art.hearthstonejson.com/v1/render/latest/enUS/512x/\(hsImageID).png", placeholder: Image("photo"))
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            Text(hsCardClass)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            Text(hsCardSet)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
        }.frame(width: 180, height: 180)
        .background(Color(.secondarySystemBackground))
        .foregroundColor(Color(.label))
        .cornerRadius(18)
    }
}

struct GridCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GridCellView(hsCardName: "", hsCardClass: "", hsCardSet: "", hsImageID: "")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            GridCellView(hsCardName: "", hsCardClass: "", hsCardSet: "", hsImageID: ""
            )
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
        }
    }
}
