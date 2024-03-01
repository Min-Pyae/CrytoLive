//
//  AllCoinsView.swift
//  CrytoLive
//
//  Created by Chris Min on 19/01/2024.
//

import SwiftUI

struct AllCoinsView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Price")
            }
            .font(.caption)
            .foregroundStyle(Color(.gray))
            .padding(.horizontal)
            
            ScrollView(.vertical) {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        AllCoinsRowView(coin: coin)
                    }
                }
            }
        }
    }
}

//#Preview {
//    AllCoinsView()
//}
