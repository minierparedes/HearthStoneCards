//
//  CardService.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/27.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case noData
    case decodingError
}


class CardService {
    func getCards(completion: @escaping (Result<Card?, NetworkError>) -> Void)  {
        guard let url = URL.urlForCards() else {
            return completion(.failure(.badURL))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            let cardResponse = try? JSONDecoder().decode(CardResponse.self, from: data)
            if let cardResponse = cardResponse {
                completion(.success(cardResponse.cards))
            }else {
                completion(.failure(.decodingError))
            }
        }.resume()
    }
}
