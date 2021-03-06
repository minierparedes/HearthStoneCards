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
                
                Button(action: { isAccountViewShowing.toggle() }, label: {
                    Text("Done")
                })
            }.padding()
                .background(Color(.secondarySystemGroupedBackground))
            
            List {
                Section {
                    HStack {
                        Image(systemName: "person")
                            .font(.system(size: 30))
                            .padding()
                        VStack(alignment: .leading) {
                            Text("person name")
                            font(.headline)
                            
                            Text("email@gmail.com")
                            foregroundColor(.secondary)
                            
                            
                        }
                    }
                }
                
                Section {
                    ForEach(0 ..< 5) { item in
                        NavigationLink(destination: Text("Destination"), label: {Text("Navigate")})
                        
                    }
                }
            }.listStyle(GroupedListStyle())
        }
    .navigationBarHidden(true)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(isAccountViewShowing: Binding.constant(true))
    }
}
