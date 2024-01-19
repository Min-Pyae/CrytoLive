//
//  TopMoversItemView.swift
//  CrytoLive
//
//  Created by Chris Min on 19/01/2024.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // IMAGE
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // COIN INFO
            HStack(spacing: 5) {
                Text("BTC")
                    .font(.caption)
                    .bold()
                
                Text("$20,330.00")
                    .font(.caption)
                    .foregroundStyle(Color(.gray))
            }
            
            // COIN PERCENT CHANGE
            Text("+ 5.60%")
                .font(.title2)
                .foregroundStyle(Color(.green))
        }
        .frame(width: 140, height: 140)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4) ,lineWidth: 2)
        }
    }
}

#Preview {
    TopMoversItemView()
}
