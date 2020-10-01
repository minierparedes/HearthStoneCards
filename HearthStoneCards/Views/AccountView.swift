//
//  AccountView.swift
//  HearthStoneCards
//
//  Created by ethancr0wn on 2020/10/02.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    @Binding var isAccountViewShowing: Bool
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Text("Account")
                Spacer()
                
                Button(action: {}, label: {
                    Text("Done")
                })
            }.padding()
            .background(Color(.secondarySystemGroupedBackground))
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(isAccountViewShowing: Binding.constant(true))
    }
}
