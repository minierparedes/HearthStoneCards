//
//  HearthStoneCardAPIService.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/29.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import Foundation


class HearthStoneCardAPIService: ObservableObject {
    @Published var hearthStoneCards: [HearthStoneCard]? = [HearthStoneCard]()
    
    func getHearthStoneCards(complition: @escaping ([HearthStoneCard]) -> ()) {
        guard let url = URL(string: "https://api.hearthstonejson.com/v1/25770/enUS/cards.json") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
          guard let data = data, error == nil else  {
                return
            }
            
            let hearthStoneCardsData = try! JSONDecoder().decode([HearthStoneCard].self, from: data)
                DispatchQueue.main.async {
                    complition(hearthStoneCardsData)
                    
            }
            }.resume()
            
        }
    }
