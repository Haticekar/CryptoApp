//
//  StatisticModel.swift
//  CryptoProject
//
//  Created by Hatice Kar on 11.12.2024.
//

import Foundation

struct StatisticModel : Identifiable{
    
    let id = UUID().uuidString
    let title : String
    let value : String
    let percentageChange : Double?
    
    init(title: String, value: String, percentageValue: Double?=nil){
        self.title = title
        self.value = value
        self.percentageChange = percentageValue
        
        
    }
}

