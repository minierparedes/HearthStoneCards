//
//  GridCellView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/30.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct GridCellView: View {
    var body: some View {
        VStack {
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.body)
                    .bold()
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "heart")
                })
            }
            .padding([.top, .horizontal])
            Image(uiImage: #imageLiteral(resourceName: "Aranna_Starseeker"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            Text("Some card")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            Text("Another card")
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
            GridCellView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            GridCellView()
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
        }
    }
}
