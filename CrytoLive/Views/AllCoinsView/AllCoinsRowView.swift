//
//  AllCoinsRowView.swift
//  CrytoLive
//
//  Created by Chris Min on 19/01/2024.
//

import SwiftUI

struct AllCoinsRowView: View {
    var body: some View {
        HStack {
            // MARKET RANK
            Text("1")
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
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(.leading, 5)
            }
            
            Spacer()
            
            // PRICE INFO
            VStack(alignment: .trailing) {
                Text("$20,330.00")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("-5.60%")
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

#Preview {
    AllCoinsRowView()
}
