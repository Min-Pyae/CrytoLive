//
//  AllCoinsRowView.swift
//  CrytoLive
//
//  Created by Chris Min on 19/01/2024.
//

import SwiftUI

struct AllCoinsRowView: View {
    
    var coin: Coin
    
    var body: some View {
        HStack {
            // MARKET RANK
            Text("\(coin.market_cap_rank)")
                .font(.caption)
                .foregroundStyle(Color(.gray))
            
            // IMAGE
            Image(systemName: "bitcoinsign.circle.fill")
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
                Text("$ \(coin.current_price)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("\(coin.price_change_percentage_24h_in_currency)%")
                    .font(.caption)
                    .foregroundStyle(Color(.red))
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
