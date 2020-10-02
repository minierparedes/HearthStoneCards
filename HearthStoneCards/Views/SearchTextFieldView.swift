//
//  SearchTextFieldView.swift
//  ApiProject
//
//  Created by ethancr0wn on 2020/09/29.
//  Copyright © 2020 ethancr0wn. All rights reserved.
//

import SwiftUI

struct SearchTextFieldView: View {
    @Binding var text: String
    var body: some View {
        ZStack(alignment: .trailing) {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 55)
                .foregroundColor(Color(.secondarySystemBackground))
                .padding()
            TextField("Find card", text: $text)
                .padding(.leading)
                .offset(x: 12)
            Button(action: {text = ""}, label: {
                Circle()
                    .frame(width: 45, height: 45)
                    .foregroundColor(text.isEmpty ? Color(.secondarySystemBackground) : .red)
                    .overlay(SearchBarButtonOverlayView(text: $text))
                    .padding(.trailing)
                    .offset(x: -5)
                
            })
            
        }
        .padding()
    }
}

struct SearchTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchTextFieldView(text: Binding.constant(""))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            SearchTextFieldView(text: Binding.constant(""))
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
            
        }
    }
}

struct SearchBarButtonOverlayView: View {
    @Binding var text: String
    var body: some View {
        Group {
            if text.isEmpty {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.gray)
            } else {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.gray)
            }
        }
    }
}
