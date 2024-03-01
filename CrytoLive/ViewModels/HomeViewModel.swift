//
//  HomeViewModel.swift
//  CrytoLive
//
//  Created by Chris Min on 22/01/2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var coins = [Coin]()
    @Published var topMoversCoins = [Coin]()
    
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("ERROR: \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print(response.statusCode)
            }
            
            guard let data = data else { return }
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                    self.fetchTopMoversCoins()
                }
            } catch let error {
                print("Error: \(error)")
            }
        }
        .resume()
    }
    
    func fetchTopMoversCoins() {
        let topMovers = coins.sorted {
            $0.price_change_percentage_24h_in_currency > $1.price_change_percentage_24h_in_currency
        }
        
        self.topMoversCoins = Array(topMovers.prefix(5))
        
    }
    
}
