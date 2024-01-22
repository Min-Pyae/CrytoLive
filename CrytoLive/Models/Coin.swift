//
//  Coin.swift
//  CrytoLive
//
//  Created by Chris Min on 22/01/2024.
//

import Foundation

struct Coin: Codable, Identifiable {
    
    let id, symbol, name, image: String
    let current_price: Double
    let market_cap_rank : Int
    let price_change_percentage24H: Double
    
}
