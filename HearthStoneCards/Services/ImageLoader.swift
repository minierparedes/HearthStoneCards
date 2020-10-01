//
//  ImageLoader.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/10/01.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import Foundation
import SwiftUI
import Combine


class ImageLoader: ObservableObject {
    @Published var downloadedData: Data?
    
    func downloadImage(url: String) {
        guard let imageURL = URL(string: url) else {
            return
        }
        URLSession.shared.dataTask(with: imageURL) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            DispatchQueue.main.async {
                self.downloadedData = data
            }
        }.resume()
    }
}
