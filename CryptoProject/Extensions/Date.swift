//
//  Date.swift
//  CryptoProject
//
//  Created by Hatice Kar on 10.01.2025.
//

import Foundation

extension Date{
    //"2024-12-05T03:10:51.885Z"
    init(coinGeckoString : String ){
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormatter : DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String{
        return shortFormatter.string(from: self)
    }
}
