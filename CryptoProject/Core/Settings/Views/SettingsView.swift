//
//  SettingsView.swift
//  CryptoProject
//
//  Created by Hatice Kar on 17.01.2025.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://music.youtube.com/watch?v=S9bCLPwzSC0&list=RDAMVMS9bCLPwzSC0")!
    let coffeeURL = URL(string: "https://www.starbucks.com.tr/menu/product/filtre-kahve-P27")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://github.com/Haticekar")!
    
    var body: some View {
        NavigationView{
            List{
                swiftSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(.blue)
            
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView{
    
    private var swiftSection: some View{
        Section(header:  Text("SwiftUI")){
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a Hatice Kar. It uses MVVM Architecture, Combine and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("SwiftUI 🙂", destination: youtubeURL)
            Link("Coffee ☕️", destination: coffeeURL)
            
        }
    }
    
    private var coinGeckoSection: some View{
        Section(header:  Text("CoinGecko")){
            VStack(alignment: .leading){
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Pirces may be slightly-delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🙂", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View{
        Section(header:  Text("Developer")){
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Hatice. It uses SwiftUI and is written 100%in Swift. The project benefits from multi-threading, publishers.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit Website 🙂", destination: personalURL)
        }
    }
    
    
    private var applicationSection: some View{
        Section(header:  Text("Developer")){
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
          
        }
    }
}
