//
//  HomeViewModel.swift
//  CrytoLive
//
//  Created by Chris Min on 22/01/2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    
    func fetchData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h&locale=en"
        
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if error != nil {
                    print("ERROR: \(error?.localizedDescription ?? "")")
                    return
                } else if data != nil {
                    //print(String(data: data!, encoding: .utf8) ?? "")
                    if let decodedData = try? JSONDecoder().decode([Coin].self, from: data!) {
                        self.coins = decodedData
                    }
                }
            }
            .resume()
        }
    }
    
}
