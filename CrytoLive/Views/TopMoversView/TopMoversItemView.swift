//
//  TopMoversItemView.swift
//  CrytoLive
//
//  Created by Chris Min on 19/01/2024.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    
    var coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            // IMAGE
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // COIN INFO
            HStack(spacing: 5) {
                Text(coin.name)
                    .font(.caption)
                    .bold()
                
                Text(coin.current_price.toCurrencyString())
                    .font(.caption)
                    .foregroundStyle(Color(.gray))
            }
            
            // COIN PERCENT CHANGE
            Text("+" + coin.price_change_percentage_24h_in_currency.toPercentageString())
                .font(.title2)
                .foregroundStyle(Color(.green))
        }
        .frame(width: 140, height: 140)
        .background(Color("TopMoversItemBackground"))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4) ,lineWidth: 2)
        }
    }
}

//#Preview {
//    TopMoversItemView()
//}
