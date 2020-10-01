//
//  URLImageView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/10/01.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI
import Foundation

struct URLImageView: View {
    
    let url: String
    let placeholder: Image
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeholder: Image = Image(systemName: "photo")) {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
        
    }
    
    var body: some View {
        if let data = self.imageLoader.downloadedData {
            return Image(uiImage: UIImage(data: data)!).renderingMode(.original).resizable()
        }else {
            return placeholder.renderingMode(.original).resizable()
        }
    }
}

struct URLImageView_Previews: PreviewProvider {
    static var previews: some View {
        URLImageView(url: "https://art.hearthstonejson.com/v1/render/latest/enUS/512x/EX1_001.png", placeholder: Image("photo"))
    }
}
