//
//  NavigationBarItemView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/09/30.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct NavigationBarItemView: View {
    let image: String
    @Binding var isSidemenuShowing: Bool
    @Binding var isAccountViewShowing: Bool
    var body: some View {
        Button(action: {showOrHideView()}, label: {
            Image(systemName: image)
                .font(.title)
                .foregroundColor(Color(.label))
        })
    }
    func showOrHideView() {
        if image == "person.crop.circle" {
            isAccountViewShowing.toggle()
        } else {
            isSidemenuShowing.toggle()
        }
    }
}

struct NavigationBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarItemView(image: "person.crop.circle", isSidemenuShowing: Binding.constant(true), isAccountViewShowing: Binding.constant(true))
    }
}
