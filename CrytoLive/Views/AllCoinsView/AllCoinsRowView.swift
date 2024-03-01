//
//  AllCoinsRowView.swift
//  CrytoLive
//
//  Created by Chris Min on 19/01/2024.
//

import SwiftUI
import Kingfisher

struct AllCoinsRowView: View {
    
    var coin: Coin
    
    var body: some View {
        HStack {
            // MARKET RANK
            Text("\(coin.market_cap_rank)")
                .font(.caption)
                .foregroundStyle(Color(.gray))
            
            // IMAGE
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.leading, 8)
            
            
            // COIN INFO
            VStack(alignment: .leading) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(.leading, 5)
            }
            
            Spacer()
            
            // PRICE INFO
            VStack(alignment: .trailing) {
                Text(coin.current_price.toCurrencyString())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(
                    coin.price_change_percentage_24h_in_currency > 0
                    ? "+" + coin.price_change_percentage_24h_in_currency.toPercentageString()
                    : coin.price_change_percentage_24h_in_currency.toPercentageString()
                )
                .font(.caption)
                .foregroundStyle(coin.price_change_percentage_24h_in_currency > 0 ? .green : .red)
                .fontWeight(.semibold)
                .padding(.leading, 5)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//#Preview {
//    AllCoinsRowView()
//}
