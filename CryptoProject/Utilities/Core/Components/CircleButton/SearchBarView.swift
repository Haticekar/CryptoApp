//
//  SearchBarView.swift
//  CryptoProject
//
//  Created by Hatice Kar on 11.12.2024.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText : String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(searchText.isEmpty ? Color.theme.secondaryText: Color.theme.accent)
            
            TextField("Search by name or symbold..", text: $searchText)
                .foregroundColor(Color.theme.accent)
                .disableAutocorrection(true)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x:10.0)
                    
                        .foregroundColor(Color.theme.accent)
                        .background(Color.red)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    ,alignment: .trailing
                    
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(
                    color:Color.theme.accent.opacity(0.15),
                    radius: 10, x:0, y:0
                )
        )
    }
}

#Preview {
    Group{
        SearchBarView(searchText: .constant(""))
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
        SearchBarView(searchText: .constant(""))
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
