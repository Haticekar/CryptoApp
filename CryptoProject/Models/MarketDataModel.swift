//
//  MarketDataModel.swift
//  CryptoProject
//
//  Created by Hatice Kar on 13.12.2024.
//

import Foundation

//JSON Data:

/*
 URL : https://api.coingecko.com/api/v3/global
 
 JSON RESPONSE :
 
 {
    "data":{
       "active_cryptocurrencies":16073,
       "upcoming_icos":0,
       "ongoing_icos":49,
       "ended_icos":3376,
       "markets":1190,
       "total_market_cap":{
          "btc":37804606.28779238,
          "eth":965291114.1592021,
          "ltc":31353414233.969505,
          "bch":7090635115.99563,
          "bnb":5274312243.654564,
          "eos":3495213449121.021,
          "xrp":1596641084048.8025,
          "xlm":8587924325345.387,
          "link":133642332635.68631,
          "dot":417235247236.0055,
          "yfi":334044321.7588153,
          "usd":3791884802613.835,
          "aed":13927630798848.65,
          "ars":3.86108670026154e+15,
          "aud":5942281633600.157,
          "bdt":452954946453582.9,
          "bhd":1429517819276.601,
          "bmd":3791884802613.835,
          "brl":22882508029853.47,
          "cad":5389527210268.7295,
          "chf":3384151013558.3774,
          "clp":3.709600902397117e+15,
          "cny":27582928431173.58,
          "czk":90208928078528.78,
          "dkk":26888103459942.62,
          "eur":3605714634459.9067,
          "gbp":2994534850089.8057,
          "gel":10655196295344.883,
          "hkd":29479913600801.22,
          "huf":1474271676167303.8,
          "idr":6.074885731231062e+16,
          "ils":13608437519934.227,
          "inr":321567029135942.3,
          "jpy":581896953981915.5,
          "krw":5.435775668889463e+15,
          "kwd":1167631295384.0764,
          "lkr":1099919820809349.9,
          "mmk":7.955374315883832e+15,
          "mxn":76574804330941.67,
          "myr":16873887371631.578,
          "ngn":5.866387059275839e+15,
          "nok":42069445131079.47,
          "nzd":6567597564514.401,
          "php":222223401273414.34,
          "pkr":1053859451050482.6,
          "pln":15382133347089.676,
          "rub":392454647091494.7,
          "sar":14247783424618.143,
          "sek":41503468405441.34,
          "sgd":5108491668123.005,
          "thb":129375317580381.53,
          "try":132529414942965.31,
          "twd":123152845994946.61,
          "uah":157921733604820.84,
          "vef":379681425285.7233,
          "vnd":9.633854287031128e+16,
          "zar":67807871870178.41,
          "xdr":2876307673829.1084,
          "xag":122986787983.78577,
          "xau":1418809536.5940194,
          "bits":37804606287792.375,
          "sats":3780460628779237.5
       },
       "total_volume":{
          "btc":2799068.4473009114,
          "eth":71470547.25379987,
          "ltc":2321419560.0761576,
          "bch":524993511.99211216,
          "bnb":390512226.7387187,
          "eos":258787027367.49872,
          "xrp":118215956172.21019,
          "xlm":635853414895.7529,
          "link":9894932740.644253,
          "dot":30892267644.570576,
          "yfi":24732777.638714932,
          "usd":280752695213.85156,
          "aed":1031207457047.4296,
          "ars":285876431901504.56,
          "aud":439968952433.10315,
          "bdt":33536968723213.617,
          "bhd":105842081579.45084,
          "bmd":280752695213.85156,
          "brl":1694230214537.51,
          "cad":399042789793.6943,
          "chf":250563919402.89673,
          "clp":274660361727711.2,
          "cny":2042251255524.6006,
          "czk":6679105776879.447,
          "dkk":1990806131653.6145,
          "eur":266968580136.93735,
          "gbp":221716579969.6735,
          "gel":788915073550.9233,
          "hkd":2182704810122.7104,
          "huf":109155675371809.34,
          "idr":4.49787013831122e+15,
          "ils":1007574256669.7183,
          "inr":23808953810937.05,
          "jpy":43083887478474.87,
          "krw":402467044506893.0,
          "kwd":86451896684.50616,
          "lkr":81438511528223.33,
          "mmk":589019154558661.1,
          "mxn":5669629701452.352,
          "myr":1249349493701.6404,
          "ngn":434349687238397.75,
          "nok":3114838852319.599,
          "nzd":486267598648.12415,
          "php":16453511141502.393,
          "pkr":78028182990965.42,
          "pln":1138899418135.6445,
          "rub":29057501916774.098,
          "sar":1054911687857.0305,
          "sek":3072933705031.9805,
          "sgd":378234803787.9196,
          "thb":9579001208001.41,
          "try":9812531861385.68,
          "twd":9118286877413.562,
          "uah":11692589477358.285,
          "vef":28111767371.76296,
          "vnd":7.132944952644852e+15,
          "zar":5020522451300.546,
          "xdr":212962991685.60077,
          "xag":9105991874.632063,
          "xau":105049235.9681669,
          "bits":2799068447300.9116,
          "sats":279906844730091.16
       },
       "market_cap_percentage":{
          "btc":52.36264028066927,
          "eth":12.478620203907868,
          "usdt":3.6964691852732634,
          "xrp":3.5790897677359235,
          "sol":2.8482893116575756,
          "bnb":2.7658768909854325,
          "doge":1.5796428123439301,
          "usdc":1.097889401113641,
          "ada":1.048123427468576,
          "steth":1.0166521270332096
       },
       "market_cap_change_percentage_24h_usd":-1.5410751488780234,
       "updated_at":1734094918
    }
 }
 */


struct GlobalData : Codable {
    let data: MarketDataModel?
}

struct MarketDataModel : Codable{
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys : String,CodingKey{
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    var marketCap : String{
        if let item = totalMarketCap.first(where: {$0.key == "usd"}){
            return "$"+item.value.formattedWithAbbreviations()
        }
        return ""
    }
    var volume : String {
        if let item = totalVolume.first(where: {$0.key == "usd"}){
            return "$"+item.value.formattedWithAbbreviations()
        }
        return ""
    }
    var btcDominance : String{
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}){
            return item.value.asPercentString()
        }
        return ""
    }
}
