//
//  URL+Extensions.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/27.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import Foundation


extension URL {
    static func urlForCards() -> URL? {
        guard let url = URL(string: "https://api.hearthstonejson.com/v1/25770/enUS/cards.json") else {
            return nil
        }
        return url
    }
}
