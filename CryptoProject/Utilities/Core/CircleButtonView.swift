//
//  CircleButtonView.swift
//  CryptoProject
//
//  Created by Hatice Kar on 6.12.2024.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName : String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(
                color:Color.theme.accent.opacity(0.25), radius: 10, x:0, y:0
            ).padding()
                
            
    }
}

#Preview {
    
    Group{
        CircleButtonView(iconName: "info")
            .padding()
            .previewLayout(.sizeThatFits)
        
        CircleButtonView(iconName: "plus")
            .padding()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
    
}
