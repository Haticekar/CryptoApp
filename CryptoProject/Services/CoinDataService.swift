//
//  CoinDataService.swift
//  CryptoProject
//
//  Created by Hatice Kar on 7.12.2024.
//

import Foundation
import Combine


class CoinDataService{
    @Published var allCoins: [CoinModel] = []
    //var cancellables = Set<AnyCancellable>()
    var coinSubscription : AnyCancellable?
    
    init(){
        getCoins()
    }
    
    func getCoins(){
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else{return }
        
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
        
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self ](returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
       
    }
}

