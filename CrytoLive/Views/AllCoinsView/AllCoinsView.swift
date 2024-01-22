//
//  AllCoinsView.swift
//  CrytoLive
//
//  Created by Chris Min on 19/01/2024.
//

import SwiftUI

struct AllCoinsView: View {
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
                    ForEach(0 ..< 20, id: \.self) { _ in
                        AllCoinsRowView()
                    }
                }
            }
        }
    }
}

#Preview {
    AllCoinsView()
}
