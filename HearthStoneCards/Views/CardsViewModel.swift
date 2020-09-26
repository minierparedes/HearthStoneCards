
//
//  CardsViewModel.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/27.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import Foundation


class CardsViewModel: ObservableObject {
    @Published private var cards: Card?
    
    var cardClass: String {
        guard let name = cards?.name else {
            return "no name avialable"
        }
        return name
    }
    
    func fetchCards() {
        CardService().getCards{ result in
            switch result {
            case .success(let cards):
                DispatchQueue.main.async {
                    self.cards = cards
                }
            case .failure(_):
                print("error")
            }
            
        }
    }
}
