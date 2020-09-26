//
//  CardStore.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/26.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import Foundation

struct CardResponse: Decodable {
    let cards: [Card]
    
}


struct Card: Decodable {
    let id: String
    let name: String
    let text: String
    let flavor: String
    let artist: String
    let attack: Int
    let cardClass: String
    let collectible: Bool
    let cost: Int
    let elite: Bool
    let faction: String
    let health: Int
    let mechanics: [Mechanics]
    let rarity: String
    let set: String
    let type: String
    
}

struct Mechanics: Decodable {
    let battlecry: String
    let charge: String
}
