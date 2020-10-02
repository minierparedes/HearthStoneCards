//
//  GridView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/30.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI


struct GridView: View {
    @Binding var filterByClass: String
    @Binding var filterBySearch: String
    
    @ObservedObject var hearthStoneCardStore: HearthStoneCardAPIService
    let layout: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var body: some View {
        LazyVGrid(columns: layout){
            if !filterBySearch.isEmpty {
                ForEach(hearthStoneCardStore.hearthStoneCards?.filter {
                    ($0.name?.lowercased().contains(filterBySearch.lowercased()))! && $0.cardClass == filterByClass
                } ?? [HearthStoneCard](), id: \.id ) { hearthStoneCard in
                               
                               NavigationLink(destination: Text(hearthStoneCard.name ?? "Destination"), label: {
                                   GridCellView(hsCardName: hearthStoneCard.name!, hsCardClass: hearthStoneCard.cardClass!, hsCardSet: hearthStoneCard.set!, hsImageID: hearthStoneCard.id)
                                   
                               })
                           }
            }else {
                ForEach(hearthStoneCardStore.hearthStoneCards!.filter {($0.cardClass?.contains(filterByClass))!}, id: \.id ) { hearthStoneCard in
                    
                    NavigationLink(destination: Text(hearthStoneCard.name ?? "Destination"), label: {
                        GridCellView(hsCardName: hearthStoneCard.name!, hsCardClass: hearthStoneCard.cardClass!, hsCardSet: hearthStoneCard.set!, hsImageID: hearthStoneCard.id)
                        
                    })
                }
            }
        }
        .onAppear{
            hearthStoneCardStore.getHearthStoneCards()
        }
        
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(filterByClass: Binding.constant("Druid"), filterBySearch: Binding.constant(""), hearthStoneCardStore: HearthStoneCardAPIService())
    }
}
