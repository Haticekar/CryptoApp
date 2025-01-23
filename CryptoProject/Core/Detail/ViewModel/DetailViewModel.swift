//
//  DetailViewModel.swift
//  CryptoProject
//
//  Created by Hatice Kar on 8.01.2025.
//

import Foundation
import Combine
import SwiftUI

class DetailViewModel : ObservableObject{
    
    @Published var overviewStatistics : [StatisticModel] = []
    @Published var additionalStatistics : [StatisticModel] = []
    @Published var coinDescription : String? = nil
    @Published var websiteURL : String? = nil
    @Published var redditURL : String? = nil
    
    
    @Published var coin : CoinModel
    private let coinDetailService : CoinDetailDataService
    private var cancellabels = Set<AnyCancellable>()
    
    init(coin: CoinModel){
        self.coin = coin
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
        
    }
      private func addSubscribers(){
        coinDetailService.$coinDetails
              .combineLatest($coin)
              .map(mapDataToStatistics)
              .sink{[weak self](returnedArrays) in
                self?.overviewStatistics = returnedArrays.overview
                self?.additionalStatistics = returnedArrays.additional
              }
              .store(in: &cancellabels)
          
          coinDetailService.$coinDetails
              .sink{[weak self] (returnedCoinDetails) in
                  self?.coinDescription = returnedCoinDetails?.readableDescription
                  self?.websiteURL = returnedCoinDetails?.links?.homepage?.first
                  self?.redditURL = returnedCoinDetails?.links?.subredditURL
              }
              .store(in: &cancellabels)
      
      }
    
    private func mapDataToStatistics(coinDetailModel: CoinDetailModel?, coinModel: CoinModel) ->(overview: [StatisticModel], additional: [StatisticModel]){
        
        let overviewArray = createOverviewArray(coinModel: coinModel)
        let additionalArray = createAdditionalArray(coinDetailModel: coinDetailModel, coinModel: coinModel)
        
     
        
        
        return(overviewArray,additionalArray)
        
    }
    
    private func createOverviewArray(coinModel: CoinModel)->[StatisticModel]{
        //overview
        let price = coinModel.currentPrice?.asCurrencyWith6Decimals()
        let pricePercentChange = coinModel.priceChangePercentage24H
        let priceStat = StatisticModel(title: "Current Price", value: price!, percentageValue: pricePercentChange)
        
        let marketCap = "$" + (coinModel.marketCap?.formattedWithAbbreviations() ?? "")
        let marketCapPercentChange = coinModel.marketCapChangePercentage24H
        let marketCapStat = StatisticModel(title:"Market Capitalization", value: marketCap, percentageValue: marketCapPercentChange )
        
        let rank = "\(coinModel.rank)"
        let rankStat = StatisticModel(title:"Rank", value: rank)
        
        let volume = "$" + (coinModel.totalVolume?.formattedWithAbbreviations() ?? "")
        let volumeStat = StatisticModel(title: "Volume", value: volume)
        
        let overviewArray: [StatisticModel] = [priceStat, marketCapStat, rankStat, volumeStat]
        return overviewArray
    }
    
    private func createAdditionalArray(coinDetailModel: CoinDetailModel?, coinModel: CoinModel) -> [StatisticModel]{
        //additional
        let high = coinModel.high24H?.asCurrencyWith6Decimals() ?? "n/a"
        let highStat = StatisticModel(title: "24H High", value: high)
        
        let low = coinModel.low24H?.asCurrencyWith6Decimals() ?? "n/a"
        let lowStat = StatisticModel(title: "24H Low", value: low)
        
        let priceChange = coinModel.priceChangePercentage24H?.asCurrencyWith2Decimals() ?? "n/a"
        let pricePercentageChange = coinModel.priceChangePercentage24H
        let priceChangeStat = StatisticModel(title: "24H Price Change", value: priceChange, percentageValue: pricePercentageChange)
        
        let marketCapChange = "$" + (coinModel.marketCapChange24H?.formattedWithAbbreviations() ?? "")
        let marketCapPercentageChange = coinModel.marketCapChangePercentage24H
        let marketCapChangeStat = StatisticModel(title: "24H Market Cap Change", value: marketCapChange, percentageValue: marketCapPercentageChange)
        
        let blockTime = coinDetailModel?.blockTimeInMinutes ?? 0
        let blockTimeString = blockTime == 0 ? "n/a" : "\(blockTime)"
        let blockStat = StatisticModel(title: "Block Time", value: blockTimeString)
        
        let hashing = coinDetailModel?.hashingAlgorithm ?? "n/a"
        let hashingStat = StatisticModel(title: "Hashing Algorithm", value: hashing)
        
        let additionalArray : [StatisticModel] = [highStat, lowStat, priceChangeStat, marketCapChangeStat, blockStat, hashingStat]
        return additionalArray
    }
}
