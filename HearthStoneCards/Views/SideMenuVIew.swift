//
//  SideMenuVIew.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/10/02.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct SideMenuVIew: View {
    @Binding var isSidemenuShowing: Bool
    var body: some View {
        VStack {
            ForEach(0 ..< 5) { item in
                Label("Label", systemImage: "42.circle")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .onTapGesture {
                        isSidemenuShowing.toggle()
                }
                
            }
            Spacer()
        }
        .padding()
        frame(width: 200, height: UIScreen.main.bounds.height - 100)
            .background(Color(.systemBackground))
    }
}

struct SideMenuVIew_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuVIew(isSidemenuShowing: Binding.constant(true))
    }
}
