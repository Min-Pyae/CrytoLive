//
//  HomeView.swift
//  CrytoLive
//
//  Created by Chris Min on 19/01/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // TOP MOVERS VIEW
                TopMoversView()
                
                // DIVIDER
                Divider()
                
                // ALL COINS VIEW
                
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
