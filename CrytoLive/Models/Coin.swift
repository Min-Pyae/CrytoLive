//
//  Coin.swift
//  CrytoLive
//
//  Created by Chris Min on 22/01/2024.
//

import Foundation

struct Coin: Codable, Identifiable {
    
    let id, symbol, name, image: String
    let current_price, price_change_percentage_24h_in_currency: Double
    let market_cap_rank : Int
}
