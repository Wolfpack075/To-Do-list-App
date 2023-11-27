//
//  CoinModel.swift
//  To Do List App
//
//  Created by Kazi Fahim Tahmid on 27/11/23.
//

import Foundation

// CoinGecko API info
/*
 URL:
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&locale=en
 
 JSON Response:
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
     "current_price": 37548,
     "market_cap": 733814384937,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 788079030133,
     "total_volume": 9764416747,
     "high_24h": 37825,
     "low_24h": 37184,
     "price_change_24h": -239.8363588373977,
     "price_change_percentage_24h": -0.6347,
     "market_cap_change_24h": -4682006911.833984,
     "market_cap_change_percentage_24h": -0.63399,
     "circulating_supply": 19554006,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -45.64949,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 55241.00694,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-11-27T00:46:08.318Z",
     "sparkline_in_7d": {
       "price": [
         37278.70425465546,
         37297.77624372937,
         37322.733299603904,
         37106.63557113921,
         37231.56857334532,
         37147.203762634825,
         37210.1094542998,
         37267.75139103715,
         37109.931783161046,
         37214.94223860236,
         37323.631210928055,
         37161.87239254375,
         37159.24601737388,
         37113.05427051357,
         37442.652846326775,
         37487.37945434397,
         37265.85927639003,
         37610.48286832978,
         37641.00141735154,
         37602.763612962044,
         37445.95234177782,
         37428.90541708652,
         37469.61749158779,
         37489.298470802016,
         37356.334423462744,
         37561.27729892008,
         37474.6289737818,
         37476.50513018157,
         37420.02154279264,
         37358.92481586114,
         37384.65925654388,
         37277.27906051402,
         37444.29994144533,
         37345.15657929008,
         37355.312569449154,
         37193.69716039457,
         37188.579814451135,
         37019.2518141471,
         36567.50916841365,
         37120.74199596451,
         37125.79383087718,
         36980.46065303571,
         36880.05824388846,
         36986.640325460656,
         36977.27155854253,
         36795.84334523973,
         36482.32215297025,
         35965.36036068078,
         36089.70808299363,
         36098.95615911636,
         36265.63606251733,
         36406.10522746171,
         36437.76256375309,
         36360.71981634957,
         36539.71914095118,
         36455.16917374303,
         36550.64833688672,
         36684.38636537151,
         36713.94887425185,
         36481.28370163904,
         36568.623490056474,
         36633.678405629515,
         36350.636197109525,
         36472.43822105619,
         36414.3773680605,
         36570.420782393725,
         37132.635217228104,
         37279.241941175904,
         37554.982662585884,
         37548.61302248509,
         37447.704620725824,
         37464.83293220907,
         37310.418354877744,
         37445.71478544485,
         37380.469745104085,
         37308.61678149021,
         37339.089223706076,
         37332.83218640457,
         37280.27850640637,
         37366.33168514719,
         37455.43569501218,
         37642.766568877785,
         37452.87610827765,
         37317.939602032275,
         37312.92554478364,
         37259.64771995764,
         37219.634494101614,
         36979.10993608723,
         37093.69986592985,
         37153.120825669925,
         37256.538097687306,
         37314.64674858196,
         37293.468510363324,
         37298.06113147242,
         37315.61310063634,
         37293.316127426726,
         37289.94527349014,
         37398.167906803625,
         37406.247477579294,
         37347.96022847561,
         37365.71923817851,
         37395.90827506792,
         37379.467490416195,
         37496.92132716386,
         37436.84535484026,
         37625.47515761646,
         37637.81821990924,
         37799.85874760194,
         37721.27737308314,
         37779.131729484536,
         37804.55731133284,
         38189.655829505544,
         37758.103819696225,
         37834.992480078836,
         37705.00717642783,
         37800.85326928097,
         37879.28207334728,
         37841.92561759012,
         37757.677579908384,
         37738.93169747125,
         37736.54681030877,
         37803.52427387762,
         37827.27932705619,
         37804.76647832383,
         37801.38886126128,
         37820.24727366895,
         37806.05244160949,
         37831.33106264941,
         37794.76842895799,
         37748.79833357165,
         37712.55622361436,
         37653.772512871146,
         37722.173733197844,
         37749.83699182468,
         37720.685112879284,
         37722.59464293821,
         37756.65341310771,
         37797.85549133707,
         37833.29737013529,
         37842.74095748697,
         37817.94179295441,
         37807.40703002618,
         37760.10455520974,
         37800.28217309619,
         37763.02703297583,
         37705.02887240114,
         37759.93974750907,
         37754.70526488663,
         37763.732858945266,
         37793.64431403557,
         37788.10244930057,
         37812.43724553806,
         37792.90092884676,
         37777.892099231256,
         37728.290528272344,
         37686.93466932706,
         37583.05840249476,
         37482.57695014037,
         37390.36318955521,
         37419.91048390201,
         37184.1521968419,
         37277.07278556451,
         37229.85088047136,
         37321.06241885232,
         37610.606849353484,
         37651.86578364459,
         37646.91333313132,
         37479.4639007697
       ]
     },
     "price_change_percentage_24h_in_currency": -0.634696070162208
   }
 */


import Foundation


struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H: Double?
    let priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
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
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}
