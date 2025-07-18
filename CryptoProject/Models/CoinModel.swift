//
//  CoinModel.swift
//  CryptoProject
//
//  Created by Hatice Kar on 6.12.2024.
//

import Foundation


   // https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd chatgpt
    
    //CoinGecko API Info
    /*
     URL: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
     
     JSON RESPONSE
     
     {
           "id":"bitcoin",
           "symbol":"btc",
           "name":"Bitcoin",
           "image":"https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
           "current_price":98022,
           "market_cap":1935936433564,
           "market_cap_rank":1,
           "fully_diluted_valuation":2054244481757,
           "total_volume":160103594805,
           "high_24h":103608,
           "low_24h":92980,
           "price_change_24h":-4766.986266292777,
           "price_change_percentage_24h":-4.63765,
           "market_cap_change_24h":-96380773670.43115,
           "market_cap_change_percentage_24h":-4.74241,
           "circulating_supply":19790568.0,
           "total_supply":21000000.0,
           "max_supply":21000000.0,
           "ath":103679,
           "ath_change_percentage":-5.62999,
           "ath_date":"2024-12-05T03:10:51.885Z",
           "atl":67.81,
           "atl_change_percentage":144190.19143,
           "atl_date":"2013-07-06T00:00:00.000Z",
           "roi":null,
           "last_updated":"2024-12-06T10:29:46.108Z",
           "sparkline_in_7d":{
              "price":[
                 96373.51348577719,
                 96125.36721127221,
              ]
           },
           "price_change_percentage_24h_in_currency":-4.637652581276311

     */





struct CoinModel : Identifiable, Codable{
    let id, symbol, name: String
    let image: String
    let currentPrice: Double?
    let marketCap, marketCapRank, fullyDilutedValuation, totalVolume: Double?
    let high24H, low24H, priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H, marketCapChangePercentage24H, circulatingSupply, totalSupply: Double?
    let maxSupply: Double?
    let ath, athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    
    
    enum CodingKeys : String, CodingKey{
       
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath = "ath"
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl = "atl"
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
        
    }
    func updateHoldings(amount: Double) -> CoinModel{
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * (currentPrice ?? 0)
    }
    var rank : Int{
        return Int(marketCapRank ?? 0)
    }
}


enum Currency: String {
    case btc
    case eth
    case usd
}

// MARK: - SparklineIn7D
struct SparklineIn7D : Codable {
    let price: [Double]?
}


