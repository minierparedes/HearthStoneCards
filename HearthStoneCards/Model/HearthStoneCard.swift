//
//  HearthStoneCard.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/29.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import Foundation

struct HearthStoneCard: Codable, Identifiable {
    //var cardID: String?
    var id:String
    var name:String?
    var text:String?
    var flavor:String?
    var artist:String?
    var attack:Int?
    var cardClass:String?
    var collectible:Bool?
    var cost:Int?
    var elite:Bool?
    var faction:String?
    var health:Int?
    var rarity:String?
    var set:String?
    var type:String?
    var mechanics: [String]?
}
